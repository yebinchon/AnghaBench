; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.cpu_hw_events = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.bts_ctx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.bts_buffer = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@bts_ctx = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @bts_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bts_event_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.bts_ctx*, align 8
  %7 = alloca %struct.bts_buffer*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i8* @this_cpu_ptr(i32* @cpu_hw_events)
  %9 = bitcast i8* %8 to %struct.cpu_hw_events*
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %5, align 8
  %10 = call i8* @this_cpu_ptr(i32* @bts_ctx)
  %11 = bitcast i8* %10 to %struct.bts_ctx*
  store %struct.bts_ctx* %11, %struct.bts_ctx** %6, align 8
  %12 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %12, i32 0, i32 0
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = call %struct.bts_buffer* @perf_aux_output_begin(i32* %13, %struct.perf_event* %14)
  store %struct.bts_buffer* %15, %struct.bts_buffer** %7, align 8
  %16 = load %struct.bts_buffer*, %struct.bts_buffer** %7, align 8
  %17 = icmp ne %struct.bts_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.bts_buffer*, %struct.bts_buffer** %7, align 8
  %21 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %21, i32 0, i32 0
  %23 = call i64 @bts_buffer_reset(%struct.bts_buffer* %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %58

26:                                               ; preds = %19
  %27 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %28 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %36 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %44 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = call i32 @perf_event_itrace_started(%struct.perf_event* %51)
  %53 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %54 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %57 = call i32 @__bts_event_start(%struct.perf_event* %56)
  br label %67

58:                                               ; preds = %25
  %59 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %59, i32 0, i32 0
  %61 = call i32 @perf_aux_output_end(i32* %60, i32 0)
  br label %62

62:                                               ; preds = %58, %18
  %63 = load i64, i64* @PERF_HES_STOPPED, align 8
  %64 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %26
  ret void
}

declare dso_local i8* @this_cpu_ptr(i32*) #1

declare dso_local %struct.bts_buffer* @perf_aux_output_begin(i32*, %struct.perf_event*) #1

declare dso_local i64 @bts_buffer_reset(%struct.bts_buffer*, i32*) #1

declare dso_local i32 @perf_event_itrace_started(%struct.perf_event*) #1

declare dso_local i32 @__bts_event_start(%struct.perf_event*) #1

declare dso_local i32 @perf_aux_output_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
