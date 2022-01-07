; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_handle.c_uv_close.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_handle.c_uv_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_close(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @assert(i32 0)
  br label %112

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %110 [
    i32 131, label %24
    i32 136, label %29
    i32 129, label %34
    i32 128, label %38
    i32 135, label %43
    i32 130, label %48
    i32 134, label %57
    i32 140, label %66
    i32 137, label %75
    i32 141, label %84
    i32 132, label %89
    i32 133, label %94
    i32 139, label %99
    i32 138, label %104
  ]

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = bitcast %struct.TYPE_5__* %26 to i32*
  %28 = call i32 @uv_tcp_close(i32* %25, i32* %27)
  br label %112

29:                                               ; preds = %17
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = bitcast %struct.TYPE_5__* %31 to i32*
  %33 = call i32 @uv_pipe_close(i32* %30, i32* %32)
  br label %112

34:                                               ; preds = %17
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = bitcast %struct.TYPE_5__* %35 to i32*
  %37 = call i32 @uv_tty_close(i32* %36)
  br label %112

38:                                               ; preds = %17
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = bitcast %struct.TYPE_5__* %40 to i32*
  %42 = call i32 @uv_udp_close(i32* %39, i32* %41)
  br label %112

43:                                               ; preds = %17
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = bitcast %struct.TYPE_5__* %45 to i32*
  %47 = call i32 @uv_poll_close(i32* %44, i32* %46)
  br label %112

48:                                               ; preds = %17
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = bitcast %struct.TYPE_5__* %49 to i32*
  %51 = call i32 @uv_timer_stop(i32* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = call i32 @uv__handle_closing(%struct.TYPE_5__* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = call i32 @uv_want_endgame(i32* %54, %struct.TYPE_5__* %55)
  br label %112

57:                                               ; preds = %17
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = bitcast %struct.TYPE_5__* %58 to i32*
  %60 = call i32 @uv_prepare_stop(i32* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = call i32 @uv__handle_closing(%struct.TYPE_5__* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = call i32 @uv_want_endgame(i32* %63, %struct.TYPE_5__* %64)
  br label %112

66:                                               ; preds = %17
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = bitcast %struct.TYPE_5__* %67 to i32*
  %69 = call i32 @uv_check_stop(i32* %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = call i32 @uv__handle_closing(%struct.TYPE_5__* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = call i32 @uv_want_endgame(i32* %72, %struct.TYPE_5__* %73)
  br label %112

75:                                               ; preds = %17
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = bitcast %struct.TYPE_5__* %76 to i32*
  %78 = call i32 @uv_idle_stop(i32* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = call i32 @uv__handle_closing(%struct.TYPE_5__* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = call i32 @uv_want_endgame(i32* %81, %struct.TYPE_5__* %82)
  br label %112

84:                                               ; preds = %17
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = bitcast %struct.TYPE_5__* %86 to i32*
  %88 = call i32 @uv_async_close(i32* %85, i32* %87)
  br label %112

89:                                               ; preds = %17
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = bitcast %struct.TYPE_5__* %91 to i32*
  %93 = call i32 @uv_signal_close(i32* %90, i32* %92)
  br label %112

94:                                               ; preds = %17
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = bitcast %struct.TYPE_5__* %96 to i32*
  %98 = call i32 @uv_process_close(i32* %95, i32* %97)
  br label %112

99:                                               ; preds = %17
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = bitcast %struct.TYPE_5__* %101 to i32*
  %103 = call i32 @uv_fs_event_close(i32* %100, i32* %102)
  br label %112

104:                                              ; preds = %17
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = bitcast %struct.TYPE_5__* %105 to i32*
  %107 = call i32 @uv__fs_poll_close(i32* %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = call i32 @uv__handle_closing(%struct.TYPE_5__* %108)
  br label %112

110:                                              ; preds = %17
  %111 = call i32 (...) @abort() #3
  unreachable

112:                                              ; preds = %104, %99, %94, %89, %84, %75, %66, %57, %48, %43, %38, %34, %29, %24, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv_tcp_close(i32*, i32*) #1

declare dso_local i32 @uv_pipe_close(i32*, i32*) #1

declare dso_local i32 @uv_tty_close(i32*) #1

declare dso_local i32 @uv_udp_close(i32*, i32*) #1

declare dso_local i32 @uv_poll_close(i32*, i32*) #1

declare dso_local i32 @uv_timer_stop(i32*) #1

declare dso_local i32 @uv__handle_closing(%struct.TYPE_5__*) #1

declare dso_local i32 @uv_want_endgame(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uv_prepare_stop(i32*) #1

declare dso_local i32 @uv_check_stop(i32*) #1

declare dso_local i32 @uv_idle_stop(i32*) #1

declare dso_local i32 @uv_async_close(i32*, i32*) #1

declare dso_local i32 @uv_signal_close(i32*, i32*) #1

declare dso_local i32 @uv_process_close(i32*, i32*) #1

declare dso_local i32 @uv_fs_event_close(i32*, i32*) #1

declare dso_local i32 @uv__fs_poll_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
