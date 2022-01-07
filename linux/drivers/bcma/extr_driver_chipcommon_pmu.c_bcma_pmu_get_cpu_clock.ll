; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_get_cpu_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_get_cpu_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BCMA_CHIP_ID_BCM53572 = common dso_local global i32 0, align 4
@BCMA_CC_PMU4706_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BCMA_CC_PMU5_MAINPLL_CPU = common dso_local global i32 0, align 4
@BCMA_CC_PMU5356_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BCMA_CC_PMU5357_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BCMA_CC_PMU4716_MAINPLL_PLL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_pmu_get_cpu_clock(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %6 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %7 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  store %struct.bcma_bus* %10, %struct.bcma_bus** %4, align 8
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BCMA_CHIP_ID_BCM53572, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 300000000, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %20 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 5
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %26 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %38 [
    i32 131, label %29
    i32 129, label %34
    i32 128, label %36
    i32 130, label %36
  ]

29:                                               ; preds = %24
  %30 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %31 = load i32, i32* @BCMA_CC_PMU4706_MAINPLL_PLL0, align 4
  %32 = load i32, i32* @BCMA_CC_PMU5_MAINPLL_CPU, align 4
  %33 = call i32 @bcma_pmu_pll_clock_bcm4706(%struct.bcma_drv_cc* %30, i32 %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %48

34:                                               ; preds = %24
  %35 = load i32, i32* @BCMA_CC_PMU5356_MAINPLL_PLL0, align 4
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %24, %24
  %37 = load i32, i32* @BCMA_CC_PMU5357_MAINPLL_PLL0, align 4
  store i32 %37, i32* %5, align 4
  br label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @BCMA_CC_PMU4716_MAINPLL_PLL0, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %36, %34
  %41 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BCMA_CC_PMU5_MAINPLL_CPU, align 4
  %44 = call i32 @bcma_pmu_pll_clock(%struct.bcma_drv_cc* %41, i32 %42, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %18
  %46 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %47 = call i32 @bcma_pmu_get_bus_clock(%struct.bcma_drv_cc* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %40, %29, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @bcma_pmu_pll_clock_bcm4706(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_pmu_pll_clock(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_pmu_get_bus_clock(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
