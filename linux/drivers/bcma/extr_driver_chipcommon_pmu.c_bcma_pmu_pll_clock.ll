; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_pll_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_pll_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@BCMA_CC_PMU4716_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM5357 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM4749 = common dso_local global i64 0, align 8
@BCMA_CC_CHIPSTAT = common dso_local global i32 0, align 4
@BCMA_CC_PPL_P1P2_OFF = common dso_local global i64 0, align 8
@BCMA_CC_PPL_P1_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PPL_P1_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PPL_P2_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PPL_P2_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PPL_M14_OFF = common dso_local global i64 0, align 8
@BCMA_CC_PPL_MDIV_WIDTH = common dso_local global i32 0, align 4
@BCMA_CC_PPL_MDIV_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PPL_NM5_OFF = common dso_local global i64 0, align 8
@BCMA_CC_PPL_NDIV_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PPL_NDIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*, i32, i32)* @bcma_pmu_pll_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_pmu_pll_clock(%struct.bcma_drv_cc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_drv_cc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %16 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.bcma_bus*, %struct.bcma_bus** %18, align 8
  store %struct.bcma_bus* %19, %struct.bcma_bus** %14, align 8
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BCMA_CC_PMU4716_MAINPLL_PLL0, align 4
  %26 = icmp sgt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %3
  %28 = phi i1 [ true, %3 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i1 [ true, %27 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.bcma_bus*, %struct.bcma_bus** %14, align 8
  %41 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BCMA_CHIP_ID_BCM5357, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %36
  %47 = load %struct.bcma_bus*, %struct.bcma_bus** %14, align 8
  %48 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BCMA_CHIP_ID_BCM4749, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46, %36
  %54 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %55 = load i32, i32* @BCMA_CC_CHIPSTAT, align 4
  %56 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 262144
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 133000000, i32* %4, align 4
  br label %118

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %46
  %63 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @BCMA_CC_PPL_P1P2_OFF, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @bcma_chipco_pll_read(%struct.bcma_drv_cc* %63, i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @BCMA_CC_PPL_P1_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @BCMA_CC_PPL_P1_SHIFT, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @BCMA_CC_PPL_P2_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @BCMA_CC_PPL_P2_SHIFT, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %12, align 4
  %79 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @BCMA_CC_PPL_M14_OFF, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @bcma_chipco_pll_read(%struct.bcma_drv_cc* %79, i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* @BCMA_CC_PPL_MDIV_WIDTH, align 4
  %89 = mul nsw i32 %87, %88
  %90 = ashr i32 %85, %89
  %91 = load i32, i32* @BCMA_CC_PPL_MDIV_MASK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %9, align 4
  %93 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @BCMA_CC_PPL_NM5_OFF, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @bcma_chipco_pll_read(%struct.bcma_drv_cc* %93, i64 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @BCMA_CC_PPL_NDIV_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @BCMA_CC_PPL_NDIV_SHIFT, align 4
  %103 = ashr i32 %101, %102
  store i32 %103, i32* %10, align 4
  %104 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %105 = call i32 @bcma_pmu_get_alp_clock(%struct.bcma_drv_cc* %104)
  %106 = sdiv i32 %105, 1000000
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = sdiv i32 %111, %112
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sdiv i32 %114, %115
  %117 = mul nsw i32 %116, 1000000
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %62, %60
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_chipco_pll_read(%struct.bcma_drv_cc*, i64) #1

declare dso_local i32 @bcma_pmu_get_alp_clock(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
