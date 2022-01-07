; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init-xlp2.c_verify_sata_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init-xlp2.c_verify_sata_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RXCDRCALFOSC0 = common dso_local global i32 0, align 4
@CALDUTY = common dso_local global i32 0, align 4
@sata_phy_config1 = common dso_local global i32* null, align 8
@RXDPIF = common dso_local global i32 0, align 4
@PPMDRIFTMAX_HI = common dso_local global i32 0, align 4
@sata_phy_config2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @verify_sata_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_sata_phy_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %52, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %55

9:                                                ; preds = %6
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @RXCDRCALFOSC0, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %9
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CALDUTY, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** @sata_phy_config1, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @check_phy_register(i32 %16, i32 %17, i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %11

30:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  %31 = load i32, i32* @RXDPIF, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %46, %30
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PPMDRIFTMAX_HI, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32*, i32** @sata_phy_config2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @check_phy_register(i32 %37, i32 %38, i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %32

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %6

55:                                               ; preds = %6
  ret void
}

declare dso_local i32 @check_phy_register(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
