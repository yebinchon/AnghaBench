; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_get_max_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_get_max_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.bcma_bus* }
%struct.TYPE_5__ = type { i32 }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@BCMA_CHIP_ID_BCM4706 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*)* @bcma_chipco_watchdog_get_max_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_chipco_watchdog_get_max_timer(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %6 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %7 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  store %struct.bcma_bus* %10, %struct.bcma_bus** %4, align 8
  %11 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %12 = call i64 @bcma_core_cc_has_pmu_watchdog(%struct.bcma_drv_cc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BCMA_CHIP_ID_BCM4706, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 32, i32* %5, align 4
  br label %42

22:                                               ; preds = %14
  %23 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %24 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 26
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 16, i32* %5, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %33 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 32, i32 24
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %31, %30
  br label %42

42:                                               ; preds = %41, %21
  br label %44

43:                                               ; preds = %1
  store i32 28, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @bcma_core_cc_has_pmu_watchdog(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
