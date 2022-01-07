; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_write_mac.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_write_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.adm5120_if_priv = type { i32 }

@MAC_WT1_MAC3_SHIFT = common dso_local global i8 0, align 1
@MAC_WT1_MAC4_SHIFT = common dso_local global i8 0, align 1
@MAC_WT1_MAC5_SHIFT = common dso_local global i8 0, align 1
@SWITCH_REG_MAC_WT1 = common dso_local global i32 0, align 4
@MAC_WT0_MAC0_SHIFT = common dso_local global i8 0, align 1
@MAC_WT0_MAC1_SHIFT = common dso_local global i8 0, align 1
@MAC_WT0_MAWC = common dso_local global i8 0, align 1
@MAC_WT0_WVE = common dso_local global i8 0, align 1
@SWITCH_REG_MAC_WT0 = common dso_local global i32 0, align 4
@MAC_WT0_MWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @adm5120_write_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_write_mac(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adm5120_if_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.adm5120_if_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.adm5120_if_priv* %7, %struct.adm5120_if_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 3
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @MAC_WT1_MAC3_SHIFT, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %18, %20
  %22 = or i32 %14, %21
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @MAC_WT1_MAC4_SHIFT, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %26, %28
  %30 = or i32 %22, %29
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 5
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @MAC_WT1_MAC5_SHIFT, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %34, %36
  %38 = or i32 %30, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %5, align 1
  %40 = load i32, i32* @SWITCH_REG_MAC_WT1, align 4
  %41 = load i8, i8* %5, align 1
  %42 = call i32 @sw_write_reg(i32 %40, i8 zeroext %41)
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @MAC_WT0_MAC0_SHIFT, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %46, %48
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @MAC_WT0_MAC1_SHIFT, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %53, %55
  %57 = or i32 %49, %56
  %58 = load i8, i8* @MAC_WT0_MAWC, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  %61 = load i8, i8* @MAC_WT0_WVE, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %60, %62
  %64 = load %struct.adm5120_if_priv*, %struct.adm5120_if_priv** %3, align 8
  %65 = getelementptr inbounds %struct.adm5120_if_priv, %struct.adm5120_if_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 3
  %68 = or i32 %63, %67
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %5, align 1
  %70 = load i32, i32* @SWITCH_REG_MAC_WT0, align 4
  %71 = load i8, i8* %5, align 1
  %72 = call i32 @sw_write_reg(i32 %70, i8 zeroext %71)
  br label %73

73:                                               ; preds = %80, %1
  %74 = load i32, i32* @SWITCH_REG_MAC_WT0, align 4
  %75 = call i32 @sw_read_reg(i32 %74)
  %76 = load i32, i32* @MAC_WT0_MWD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %73

81:                                               ; preds = %73
  ret void
}

declare dso_local %struct.adm5120_if_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sw_write_reg(i32, i8 zeroext) #1

declare dso_local i32 @sw_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
