; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.bts_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cpu_hw_events = type { i32 }

@bts_ctx = common dso_local global i32 0, align 4
@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@INTEL_PMC_IDX_FIXED_BTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @bts_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bts_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bts_ctx*, align 8
  %7 = alloca %struct.cpu_hw_events*, align 8
  %8 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i8* @this_cpu_ptr(i32* @bts_ctx)
  %10 = bitcast i8* %9 to %struct.bts_ctx*
  store %struct.bts_ctx* %10, %struct.bts_ctx** %6, align 8
  %11 = call i8* @this_cpu_ptr(i32* @cpu_hw_events)
  %12 = bitcast i8* %11 to %struct.cpu_hw_events*
  store %struct.cpu_hw_events* %12, %struct.cpu_hw_events** %7, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %8, align 8
  %15 = load i32, i32* @PERF_HES_STOPPED, align 4
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @INTEL_PMC_IDX_FIXED_BTS, align 4
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %7, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %2
  %29 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PERF_EF_START, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = call i32 @bts_event_start(%struct.perf_event* %43, i32 0)
  %45 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %46 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PERF_HES_STOPPED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %37
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %51, %34, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i8* @this_cpu_ptr(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @bts_event_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
