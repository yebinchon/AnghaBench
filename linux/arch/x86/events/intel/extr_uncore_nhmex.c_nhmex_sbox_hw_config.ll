; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_sbox_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_sbox_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.perf_event = type { %struct.TYPE_4__, %struct.hw_perf_event }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i64, i32 }

@NHMEX_PMON_CTL_EV_SEL_MASK = common dso_local global i32 0, align 4
@NHMEX_S_EVENT_TO_R_PROG_EV = common dso_local global i32 0, align 4
@NHMEX_S0_MSR_MM_CFG = common dso_local global i32 0, align 4
@NHMEX_S1_MSR_MM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_sbox_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_sbox_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %6, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 2
  store %struct.hw_perf_event_extra* %12, %struct.hw_perf_event_extra** %7, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 1
  store %struct.hw_perf_event_extra* %14, %struct.hw_perf_event_extra** %8, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NHMEX_PMON_CTL_EV_SEL_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @NHMEX_S_EVENT_TO_R_PROG_EV, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %25 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @NHMEX_S0_MSR_MM_CFG, align 4
  %32 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @NHMEX_S1_MSR_MM_CFG, align 4
  %36 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %46 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %52 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %38, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
