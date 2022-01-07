; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_timer_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@BCMA_CC_PMU_WATCHDOG = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4707 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM47094 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM53018 = common dso_local global i64 0, align 8
@BCMA_CLKMODE_FAST = common dso_local global i32 0, align 4
@BCMA_CLKMODE_DYNAMIC = common dso_local global i32 0, align 4
@BCMA_CC_WATCHDOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_chipco_watchdog_timer_set(%struct.bcma_drv_cc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %8 = call i32 @bcma_chipco_watchdog_get_max_timer(%struct.bcma_drv_cc* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %10 = call i64 @bcma_core_cc_has_pmu_watchdog(%struct.bcma_drv_cc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 2, i32* %4, align 4
  br label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %25 = load i32, i32* @BCMA_CC_PMU_WATCHDOG, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %24, i32 %25, i32 %26)
  br label %78

28:                                               ; preds = %2
  %29 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %30 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.bcma_bus*, %struct.bcma_bus** %32, align 8
  store %struct.bcma_bus* %33, %struct.bcma_bus** %6, align 8
  %34 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %35 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BCMA_CHIP_ID_BCM4707, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %28
  %41 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BCMA_CHIP_ID_BCM47094, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %49 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BCMA_CHIP_ID_BCM53018, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %56 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @BCMA_CLKMODE_FAST, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @BCMA_CLKMODE_DYNAMIC, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @bcma_core_set_clockmode(%struct.TYPE_4__* %57, i32 %65)
  br label %67

67:                                               ; preds = %64, %47, %40, %28
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %75 = load i32, i32* @BCMA_CC_WATCHDOG, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %23
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @bcma_chipco_watchdog_get_max_timer(%struct.bcma_drv_cc*) #1

declare dso_local i64 @bcma_core_cc_has_pmu_watchdog(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_pmu_write32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_core_set_clockmode(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bcma_cc_write32(%struct.bcma_drv_cc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
