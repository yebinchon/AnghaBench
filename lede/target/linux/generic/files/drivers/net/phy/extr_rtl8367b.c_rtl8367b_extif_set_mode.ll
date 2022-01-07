; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_extif_set_mode.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_extif_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367B_CHIP_DEBUG0_REG = common dso_local global i32 0, align 4
@RTL8367B_CHIP_DEBUG1_REG = common dso_local global i32 0, align 4
@RTL8367B_BYPASS_LINE_RATE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid mode for external interface %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTL8367B_DIS_REG = common dso_local global i32 0, align 4
@RTL8367B_DIS_RGMII_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32)* @rtl8367b_extif_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_extif_set_mode(%struct.rtl8366_smi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %56 [
    i32 131, label %10
    i32 130, label %10
    i32 129, label %17
    i32 128, label %17
    i32 134, label %29
    i32 133, label %43
    i32 132, label %43
    i32 135, label %43
  ]

10:                                               ; preds = %3, %3
  %11 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %12 = load i32, i32* @RTL8367B_CHIP_DEBUG0_REG, align 4
  %13 = call i32 @REG_WR(%struct.rtl8366_smi* %11, i32 %12, i32 871)
  %14 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %15 = load i32, i32* @RTL8367B_CHIP_DEBUG1_REG, align 4
  %16 = call i32 @REG_WR(%struct.rtl8366_smi* %14, i32 %15, i32 30583)
  br label %64

17:                                               ; preds = %3, %3
  %18 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %19 = load i32, i32* @RTL8367B_BYPASS_LINE_RATE_REG, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  %22 = srem i32 %21, 2
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = srem i32 %25, 2
  %27 = call i32 @BIT(i32 %26)
  %28 = call i32 @REG_RMW(%struct.rtl8366_smi* %18, i32 %19, i32 %23, i32 %27)
  br label %64

29:                                               ; preds = %3
  %30 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %31 = load i32, i32* @RTL8367B_CHIP_DEBUG0_REG, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @RTL8367B_CHIP_DEBUG0_DUMMY0(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @RTL8367B_CHIP_DEBUG0_DUMMY0(i32 %34)
  %36 = call i32 @REG_RMW(%struct.rtl8366_smi* %30, i32 %31, i32 %33, i32 %35)
  %37 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @RTL8367B_EXT_RGMXF_REG(i32 %38)
  %40 = call i32 @BIT(i32 6)
  %41 = call i32 @BIT(i32 6)
  %42 = call i32 @REG_RMW(%struct.rtl8366_smi* %37, i32 %39, i32 %40, i32 %41)
  br label %64

43:                                               ; preds = %3, %3, %3
  %44 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %45 = load i32, i32* @RTL8367B_BYPASS_LINE_RATE_REG, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = srem i32 %47, 2
  %49 = call i32 @BIT(i32 %48)
  %50 = call i32 @REG_RMW(%struct.rtl8366_smi* %44, i32 %45, i32 %49, i32 0)
  %51 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @RTL8367B_EXT_RGMXF_REG(i32 %52)
  %54 = call i32 @BIT(i32 6)
  %55 = call i32 @REG_RMW(%struct.rtl8366_smi* %51, i32 %53, i32 %54, i32 0)
  br label %64

56:                                               ; preds = %3
  %57 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %58 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %76

64:                                               ; preds = %43, %29, %17, %10
  %65 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %66 = load i32, i32* @RTL8367B_DIS_REG, align 4
  %67 = load i32, i32* @RTL8367B_DIS_RGMII_MASK, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @RTL8367B_DIS_RGMII_SHIFT(i32 %68)
  %70 = shl i32 %67, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @RTL8367B_DIS_RGMII_SHIFT(i32 %72)
  %74 = shl i32 %71, %73
  %75 = call i32 @REG_RMW(%struct.rtl8366_smi* %65, i32 %66, i32 %70, i32 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %64, %56
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @REG_RMW(%struct.rtl8366_smi*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RTL8367B_CHIP_DEBUG0_DUMMY0(i32) #1

declare dso_local i32 @RTL8367B_EXT_RGMXF_REG(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @RTL8367B_DIS_RGMII_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
