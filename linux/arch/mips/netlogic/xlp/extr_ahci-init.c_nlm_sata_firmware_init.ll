; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init.c_nlm_sata_firmware_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init.c_nlm_sata_firmware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"XLP AHCI Initialization started.\0A\00", align 1
@SATA_CTL = common dso_local global i32 0, align 4
@SATA_RST_N = common dso_local global i32 0, align 4
@PHY3_RESET_N = common dso_local global i32 0, align 4
@PHY2_RESET_N = common dso_local global i32 0, align 4
@PHY1_RESET_N = common dso_local global i32 0, align 4
@PHY0_RESET_N = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Waiting for PHYs to come up.\0A\00", align 1
@SATA_STATUS = common dso_local global i32 0, align 4
@P0_PHY_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"PHY%d is up.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"PHY%d is down.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"XLP AHCI init done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nlm_sata_firmware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_sata_firmware_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @nlm_get_sata_regbase(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SATA_CTL, align 4
  %11 = load i32, i32* @SATA_RST_N, align 4
  %12 = call i32 @sata_clear_glue_reg(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SATA_CTL, align 4
  %15 = load i32, i32* @PHY3_RESET_N, align 4
  %16 = load i32, i32* @PHY2_RESET_N, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PHY1_RESET_N, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PHY0_RESET_N, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @sata_clear_glue_reg(i32 %13, i32 %14, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SATA_CTL, align 4
  %25 = load i32, i32* @SATA_RST_N, align 4
  %26 = call i32 @sata_set_glue_reg(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SATA_CTL, align 4
  %29 = load i32, i32* @PHY3_RESET_N, align 4
  %30 = load i32, i32* @PHY2_RESET_N, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PHY1_RESET_N, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PHY0_RESET_N, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @sata_set_glue_reg(i32 %27, i32 %28, i32 %35)
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %51, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SATA_STATUS, align 4
  %41 = call i32 @nlm_read_sata_reg(i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 240
  %47 = icmp ne i32 %46, 240
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 10000
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i1 [ false, %44 ], [ %50, %48 ]
  br i1 %52, label %38, label %53

53:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @P0_PHY_READY, align 4
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %54

74:                                               ; preds = %54
  %75 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @nlm_get_sata_regbase(i32) #1

declare dso_local i32 @sata_clear_glue_reg(i32, i32, i32) #1

declare dso_local i32 @sata_set_glue_reg(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nlm_read_sata_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
