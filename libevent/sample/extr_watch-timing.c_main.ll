; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.event = type { i32 }

@__const.main.one_second = private unnamed_addr constant %struct.timeval { i32 1, i32 0 }, align 4
@base = common dso_local global i32 0, align 4
@durations = common dso_local global i32 0, align 4
@delays = common dso_local global i32 0, align 4
@on_prepare = common dso_local global i32 0, align 4
@on_check = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@on_timeout = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@on_sigint = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.event*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.timeval* @__const.main.one_second to i8*), i64 8, i1 false)
  %10 = call i32 (...) @event_base_new()
  store i32 %10, i32* @base, align 4
  %11 = call i32 @histogram_new(i32 100)
  store i32 %11, i32* @durations, align 4
  %12 = call i32 @histogram_new(i32 100)
  store i32 %12, i32* @delays, align 4
  %13 = load i32, i32* @base, align 4
  %14 = call i32 @evwatch_prepare_new(i32 %13, i32* @on_prepare, i32* null)
  %15 = load i32, i32* @base, align 4
  %16 = call i32 @evwatch_check_new(i32 %15, i32* @on_check, i32* null)
  %17 = load i32, i32* @base, align 4
  %18 = load i32, i32* @EV_PERSIST, align 4
  %19 = call %struct.event* @event_new(i32 %17, i32 -1, i32 %18, i32* @on_timeout, i32* null)
  store %struct.event* %19, %struct.event** %7, align 8
  %20 = load %struct.event*, %struct.event** %7, align 8
  %21 = icmp ne %struct.event* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.event*, %struct.event** %7, align 8
  %26 = call i32 @event_add(%struct.event* %25, %struct.timeval* %6)
  %27 = load i32, i32* @base, align 4
  %28 = load i32, i32* @SIGINT, align 4
  %29 = call %struct.event* @evsignal_new(i32 %27, i32 %28, i32* @on_sigint, i32* null)
  store %struct.event* %29, %struct.event** %8, align 8
  %30 = load %struct.event*, %struct.event** %8, align 8
  %31 = icmp ne %struct.event* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %24
  %35 = load %struct.event*, %struct.event** %8, align 8
  %36 = call i32 @event_add(%struct.event* %35, %struct.timeval* null)
  %37 = load i32, i32* @base, align 4
  %38 = call i32 @event_base_dispatch(i32 %37)
  %39 = load %struct.event*, %struct.event** %7, align 8
  %40 = call i32 @event_free(%struct.event* %39)
  %41 = load %struct.event*, %struct.event** %8, align 8
  %42 = call i32 @event_free(%struct.event* %41)
  %43 = load i32, i32* @base, align 4
  %44 = call i32 @event_base_free(i32 %43)
  %45 = load i32, i32* @durations, align 4
  %46 = call i32 @histogram_free(i32 %45)
  %47 = load i32, i32* @delays, align 4
  %48 = call i32 @histogram_free(i32 %47)
  %49 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %34, %32, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @event_base_new(...) #2

declare dso_local i32 @histogram_new(i32) #2

declare dso_local i32 @evwatch_prepare_new(i32, i32*, i32*) #2

declare dso_local i32 @evwatch_check_new(i32, i32*, i32*) #2

declare dso_local %struct.event* @event_new(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @event_add(%struct.event*, %struct.timeval*) #2

declare dso_local %struct.event* @evsignal_new(i32, i32, i32*, i32*) #2

declare dso_local i32 @event_base_dispatch(i32) #2

declare dso_local i32 @event_free(%struct.event*) #2

declare dso_local i32 @event_base_free(i32) #2

declare dso_local i32 @histogram_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
