; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_xtalfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_xtalfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32 }

@BCMA_CC_PMU_STAT = common dso_local global i32 0, align 4
@BCMA_CC_PMU_STAT_EXT_LPO_AVAIL = common dso_local global i32 0, align 4
@BCMA_CC_PMU_XTAL_FREQ = common dso_local global i32 0, align 4
@BCMA_CC_PMU_XTAL_FREQ_MEASURE_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PMU_XTAL_FREQ_ILPCTL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*)* @bcma_pmu_xtalfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_pmu_xtalfreq(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %6 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %7 = load i32, i32* @BCMA_CC_PMU_STAT, align 4
  %8 = call i32 @bcma_pmu_read32(%struct.bcma_drv_cc* %6, i32 %7)
  %9 = load i32, i32* @BCMA_CC_PMU_STAT_EXT_LPO_AVAIL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %15 = load i32, i32* @BCMA_CC_PMU_XTAL_FREQ, align 4
  %16 = load i32, i32* @BCMA_CC_PMU_XTAL_FREQ_MEASURE_SHIFT, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %14, i32 %15, i32 %17)
  %19 = call i32 @usleep_range(i32 1000, i32 2000)
  %20 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %21 = load i32, i32* @BCMA_CC_PMU_XTAL_FREQ, align 4
  %22 = call i32 @bcma_pmu_read32(%struct.bcma_drv_cc* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @BCMA_CC_PMU_XTAL_FREQ_ILPCTL_MASK, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %27 = load i32, i32* @BCMA_CC_PMU_XTAL_FREQ, align 4
  %28 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %26, i32 %27, i32 0)
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 32768
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 50000
  %34 = sdiv i32 %33, 100000
  %35 = mul nsw i32 %34, 100
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %13, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @bcma_pmu_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_pmu_write32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
