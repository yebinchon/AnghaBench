; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snr_pcu_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snr_pcu_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__, %struct.hw_perf_event }
%struct.TYPE_2__ = type { i32 }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i32 }

@SNBEP_PMON_CTL_EV_SEL_MASK = common dso_local global i32 0, align 4
@SNR_PCU_MSR_PMON_BOX_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @snr_pcu_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snr_pcu_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %5, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event_extra* %11, %struct.hw_perf_event_extra** %6, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SNBEP_PMON_CTL_EV_SEL_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 11
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 14
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, i32* @SNR_PCU_MSR_PMON_BOX_FILTER, align 4
  %24 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 11
  %28 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 255, %36
  %38 = and i32 %33, %37
  %39 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %22, %19, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
