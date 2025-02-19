; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv_run.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }

@UV_RUN_ONCE = common dso_local global i64 0, align 8
@UV_RUN_DEFAULT = common dso_local global i64 0, align 8
@pGetQueuedCompletionStatusEx = common dso_local global i64 0, align 8
@UV_RUN_NOWAIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_run(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = call i32 @uv__loop_alive(%struct.TYPE_14__* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = call i32 @uv_update_time(%struct.TYPE_14__* %13)
  br label %15

15:                                               ; preds = %12, %2
  br label %16

16:                                               ; preds = %83, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %84

26:                                               ; preds = %24
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = call i32 @uv_update_time(%struct.TYPE_14__* %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = call i32 @uv__run_timers(%struct.TYPE_14__* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = call i32 @uv_process_reqs(%struct.TYPE_14__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = call i32 @uv_idle_invoke(%struct.TYPE_14__* %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = call i32 @uv_prepare_invoke(%struct.TYPE_14__* %35)
  store i32 0, i32* %5, align 4
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @UV_RUN_ONCE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %26
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @UV_RUN_DEFAULT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %40
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = call i32 @uv_backend_timeout(%struct.TYPE_14__* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i64, i64* @pGetQueuedCompletionStatusEx, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @uv__poll(%struct.TYPE_14__* %54, i32 %55)
  br label %61

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @uv__poll_wine(%struct.TYPE_14__* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = call i32 @uv_check_invoke(%struct.TYPE_14__* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = call i32 @uv_process_endgames(%struct.TYPE_14__* %64)
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @UV_RUN_ONCE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = call i32 @uv__run_timers(%struct.TYPE_14__* %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = call i32 @uv__loop_alive(%struct.TYPE_14__* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @UV_RUN_ONCE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @UV_RUN_NOWAIT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %72
  br label %84

83:                                               ; preds = %78
  br label %16

84:                                               ; preds = %82, %24
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @uv__loop_alive(%struct.TYPE_14__*) #1

declare dso_local i32 @uv_update_time(%struct.TYPE_14__*) #1

declare dso_local i32 @uv__run_timers(%struct.TYPE_14__*) #1

declare dso_local i32 @uv_process_reqs(%struct.TYPE_14__*) #1

declare dso_local i32 @uv_idle_invoke(%struct.TYPE_14__*) #1

declare dso_local i32 @uv_prepare_invoke(%struct.TYPE_14__*) #1

declare dso_local i32 @uv_backend_timeout(%struct.TYPE_14__*) #1

declare dso_local i32 @uv__poll(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @uv__poll_wine(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @uv_check_invoke(%struct.TYPE_14__*) #1

declare dso_local i32 @uv_process_endgames(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
