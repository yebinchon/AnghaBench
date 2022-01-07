; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cpu_hw_events = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.bts_ctx = type { %struct.TYPE_8__, %struct.TYPE_9__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.bts_buffer = type { i32, i32, i64 }

@cpu_hw_events = common dso_local global i32 0, align 4
@bts_ctx = common dso_local global i32 0, align 4
@BTS_STATE_ACTIVE = common dso_local global i32 0, align 4
@BTS_STATE_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @bts_event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bts_event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.bts_ctx*, align 8
  %7 = alloca %struct.bts_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i8* @this_cpu_ptr(i32* @cpu_hw_events)
  %10 = bitcast i8* %9 to %struct.cpu_hw_events*
  store %struct.cpu_hw_events* %10, %struct.cpu_hw_events** %5, align 8
  %11 = call i8* @this_cpu_ptr(i32* @bts_ctx)
  %12 = bitcast i8* %11 to %struct.bts_ctx*
  store %struct.bts_ctx* %12, %struct.bts_ctx** %6, align 8
  store %struct.bts_buffer* null, %struct.bts_buffer** %7, align 8
  %13 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_ONCE(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BTS_STATE_ACTIVE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = load i32, i32* @BTS_STATE_STOPPED, align 4
  %23 = call i32 @__bts_event_stop(%struct.perf_event* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @BTS_STATE_STOPPED, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %29, i32 0, i32 1
  %31 = call %struct.bts_buffer* @perf_get_aux(%struct.TYPE_9__* %30)
  store %struct.bts_buffer* %31, %struct.bts_buffer** %7, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @PERF_HES_STOPPED, align 4
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PERF_EF_UPDATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %32
  %44 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %45 = call i32 @bts_update(%struct.bts_ctx* %44)
  %46 = load %struct.bts_buffer*, %struct.bts_buffer** %7, align 8
  %47 = icmp ne %struct.bts_buffer* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.bts_buffer*, %struct.bts_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.bts_buffer*, %struct.bts_buffer** %7, align 8
  %55 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %54, i32 0, i32 1
  %56 = load %struct.bts_buffer*, %struct.bts_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = call i32 @local_xchg(i32* %55, i32 %60)
  %62 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %53, %48
  %66 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %67 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %66, i32 0, i32 1
  %68 = load %struct.bts_buffer*, %struct.bts_buffer** %7, align 8
  %69 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %68, i32 0, i32 1
  %70 = call i32 @local_xchg(i32* %69, i32 0)
  %71 = call i32 @perf_aux_output_end(%struct.TYPE_9__* %67, i32 %70)
  br label %72

72:                                               ; preds = %65, %43
  %73 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %78 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i32 %76, i32* %80, align 4
  %81 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %86 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  store i32 %84, i32* %88, align 4
  %89 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %94 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.bts_ctx*, %struct.bts_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %102 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %72, %32
  ret void
}

declare dso_local i8* @this_cpu_ptr(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @__bts_event_stop(%struct.perf_event*, i32) #1

declare dso_local %struct.bts_buffer* @perf_get_aux(%struct.TYPE_9__*) #1

declare dso_local i32 @bts_update(%struct.bts_ctx*) #1

declare dso_local i32 @local_xchg(i32*, i32) #1

declare dso_local i32 @perf_aux_output_end(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
