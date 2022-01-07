; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_ticks_per_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_ticks_per_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@BCMA_CC_CAP_PMU = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4706 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*)* @bcma_chipco_watchdog_ticks_per_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_chipco_watchdog_ticks_per_ms(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %5 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %6 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  store %struct.bcma_bus* %9, %struct.bcma_bus** %4, align 8
  %10 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %11 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BCMA_CC_CAP_PMU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %18 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BCMA_CHIP_ID_BCM4706, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %25 = call i32 @bcma_chipco_get_alp_clock(%struct.bcma_drv_cc* %24)
  %26 = sdiv i32 %25, 4000
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %16
  store i32 32, i32* %2, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %30 = call i32 @bcma_chipco_get_alp_clock(%struct.bcma_drv_cc* %29)
  %31 = sdiv i32 %30, 1000
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %27, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @bcma_chipco_get_alp_clock(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
