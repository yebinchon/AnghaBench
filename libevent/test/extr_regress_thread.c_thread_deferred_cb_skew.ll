; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_thread.c_thread_deferred_cb_skew.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_thread.c_thread_deferred_cb_skew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.event_base* }
%struct.event_base = type { i32 }
%struct.event_config = type { i32 }

@__const.thread_deferred_cb_skew.tv_timer = private unnamed_addr constant %struct.timeval { i32 1, i32 0, i64 0, i32 0 }, align 8
@QUEUE_THREAD_COUNT = common dso_local global i32 0, align 4
@deferred_data = common dso_local global %struct.TYPE_2__* null, align 8
@timer_start = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@timer_callback = common dso_local global i32 0, align 4
@start_threads_callback = common dso_local global i32 0, align 4
@timer_end = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"callback count, %u\00", align 1
@callback_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"elapsed time, %u usec\00", align 1
@load_threads = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thread_deferred_cb_skew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_deferred_cb_skew(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.event_config*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.timeval* @__const.thread_deferred_cb_skew.tv_timer to i8*), i64 24, i1 false)
  store %struct.event_base* null, %struct.event_base** %4, align 8
  store %struct.event_config* null, %struct.event_config** %5, align 8
  %10 = call %struct.event_config* (...) @event_config_new()
  store %struct.event_config* %10, %struct.event_config** %5, align 8
  %11 = load %struct.event_config*, %struct.event_config** %5, align 8
  %12 = ptrtoint %struct.event_config* %11 to i32
  %13 = call i32 @tt_assert(i32 %12)
  %14 = load %struct.event_config*, %struct.event_config** %5, align 8
  %15 = call i32 @event_config_set_max_dispatch_interval(%struct.event_config* %14, i32* null, i32 16, i32 0)
  %16 = load %struct.event_config*, %struct.event_config** %5, align 8
  %17 = call %struct.event_base* @event_base_new_with_config(%struct.event_config* %16)
  store %struct.event_base* %17, %struct.event_base** %4, align 8
  %18 = load %struct.event_base*, %struct.event_base** %4, align 8
  %19 = ptrtoint %struct.event_base* %18 to i32
  %20 = call i32 @tt_assert(i32 %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %32, %1
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @QUEUE_THREAD_COUNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.event_base*, %struct.event_base** %4, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @deferred_data, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.event_base* %26, %struct.event_base** %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %21

35:                                               ; preds = %21
  %36 = call i32 @evutil_gettimeofday(i32* @timer_start, i32* null)
  %37 = load %struct.event_base*, %struct.event_base** %4, align 8
  %38 = load i32, i32* @EV_TIMEOUT, align 4
  %39 = load i32, i32* @timer_callback, align 4
  %40 = call i32 @event_base_once(%struct.event_base* %37, i32 -1, i32 %38, i32 %39, i32* null, %struct.timeval* %3)
  %41 = load %struct.event_base*, %struct.event_base** %4, align 8
  %42 = load i32, i32* @EV_TIMEOUT, align 4
  %43 = load i32, i32* @start_threads_callback, align 4
  %44 = call i32 @event_base_once(%struct.event_base* %41, i32 -1, i32 %42, i32 %43, i32* null, %struct.timeval* null)
  %45 = load %struct.event_base*, %struct.event_base** %4, align 8
  %46 = call i32 @event_base_dispatch(%struct.event_base* %45)
  %47 = call i32 @evutil_timersub(i32* @timer_end, i32* @timer_start, %struct.timeval* %6)
  %48 = load i32, i32* @callback_count, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @TT_BLATHER(i8* %50)
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 1000000
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %55, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @TT_BLATHER(i8* %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %64, 600000
  br i1 %65, label %66, label %69

66:                                               ; preds = %35
  %67 = load i32, i32* %7, align 4
  %68 = icmp sle i32 %67, 1400000
  br label %69

69:                                               ; preds = %66, %35
  %70 = phi i1 [ false, %35 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @tt_assert(i32 %71)
  br label %73

73:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @QUEUE_THREAD_COUNT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32*, i32** @load_threads, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @THREAD_JOIN(i32 %83)
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %74

88:                                               ; preds = %74
  %89 = load %struct.event_base*, %struct.event_base** %4, align 8
  %90 = icmp ne %struct.event_base* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.event_base*, %struct.event_base** %4, align 8
  %93 = call i32 @event_base_free(%struct.event_base* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.event_config*, %struct.event_config** %5, align 8
  %96 = icmp ne %struct.event_config* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.event_config*, %struct.event_config** %5, align 8
  %99 = call i32 @event_config_free(%struct.event_config* %98)
  br label %100

100:                                              ; preds = %97, %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.event_config* @event_config_new(...) #2

declare dso_local i32 @tt_assert(i32) #2

declare dso_local i32 @event_config_set_max_dispatch_interval(%struct.event_config*, i32*, i32, i32) #2

declare dso_local %struct.event_base* @event_base_new_with_config(%struct.event_config*) #2

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #2

declare dso_local i32 @event_base_once(%struct.event_base*, i32, i32, i32, i32*, %struct.timeval*) #2

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #2

declare dso_local i32 @evutil_timersub(i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @TT_BLATHER(i8*) #2

declare dso_local i32 @THREAD_JOIN(i32) #2

declare dso_local i32 @event_base_free(%struct.event_base*) #2

declare dso_local i32 @event_config_free(%struct.event_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
