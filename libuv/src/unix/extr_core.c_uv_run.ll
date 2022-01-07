; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_run.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }

@UV_RUN_ONCE = common dso_local global i64 0, align 8
@UV_RUN_DEFAULT = common dso_local global i64 0, align 8
@UV_RUN_NOWAIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_run(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @uv__loop_alive(%struct.TYPE_13__* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = call i32 @uv__update_time(%struct.TYPE_13__* %13)
  br label %15

15:                                               ; preds = %12, %2
  br label %16

16:                                               ; preds = %77, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %78

26:                                               ; preds = %24
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call i32 @uv__update_time(%struct.TYPE_13__* %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = call i32 @uv__run_timers(%struct.TYPE_13__* %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = call i32 @uv__run_pending(%struct.TYPE_13__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = call i32 @uv__run_idle(%struct.TYPE_13__* %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = call i32 @uv__run_prepare(%struct.TYPE_13__* %35)
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
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = call i32 @uv_backend_timeout(%struct.TYPE_13__* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @uv__io_poll(%struct.TYPE_13__* %51, i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = call i32 @uv__run_check(%struct.TYPE_13__* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = call i32 @uv__run_closing_handles(%struct.TYPE_13__* %56)
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @UV_RUN_ONCE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = call i32 @uv__update_time(%struct.TYPE_13__* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = call i32 @uv__run_timers(%struct.TYPE_13__* %64)
  br label %66

66:                                               ; preds = %61, %50
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = call i32 @uv__loop_alive(%struct.TYPE_13__* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @UV_RUN_ONCE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @UV_RUN_NOWAIT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %66
  br label %78

77:                                               ; preds = %72
  br label %16

78:                                               ; preds = %76, %24
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @uv__loop_alive(%struct.TYPE_13__*) #1

declare dso_local i32 @uv__update_time(%struct.TYPE_13__*) #1

declare dso_local i32 @uv__run_timers(%struct.TYPE_13__*) #1

declare dso_local i32 @uv__run_pending(%struct.TYPE_13__*) #1

declare dso_local i32 @uv__run_idle(%struct.TYPE_13__*) #1

declare dso_local i32 @uv__run_prepare(%struct.TYPE_13__*) #1

declare dso_local i32 @uv_backend_timeout(%struct.TYPE_13__*) #1

declare dso_local i32 @uv__io_poll(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @uv__run_check(%struct.TYPE_13__*) #1

declare dso_local i32 @uv__run_closing_handles(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
