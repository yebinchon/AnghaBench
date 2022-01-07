; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BCMA_CC_PMU_CTL = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL_NOILPONW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_pmu_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  %3 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %4 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %10 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %11 = load i32, i32* @BCMA_CC_PMU_CTL_NOILPONW, align 4
  %12 = xor i32 %11, -1
  %13 = call i32 @bcma_pmu_mask32(%struct.bcma_drv_cc* %9, i32 %10, i32 %12)
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %16 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %17 = load i32, i32* @BCMA_CC_PMU_CTL_NOILPONW, align 4
  %18 = call i32 @bcma_pmu_set32(%struct.bcma_drv_cc* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  %20 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %21 = call i32 @bcma_pmu_pll_init(%struct.bcma_drv_cc* %20)
  %22 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %23 = call i32 @bcma_pmu_resources_init(%struct.bcma_drv_cc* %22)
  %24 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %25 = call i32 @bcma_pmu_workarounds(%struct.bcma_drv_cc* %24)
  ret void
}

declare dso_local i32 @bcma_pmu_mask32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_pmu_set32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_pmu_pll_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_pmu_resources_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_pmu_workarounds(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
