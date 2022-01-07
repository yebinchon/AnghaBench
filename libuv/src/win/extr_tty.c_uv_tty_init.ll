; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_tty_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_tty_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i32*, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@UV_EBADF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@uv_tty_output_lock = common dso_local global i32 0, align 4
@uv__need_check_vterm_state = common dso_local global i64 0, align 8
@UV_TTY = common dso_local global i32 0, align 4
@UV_HANDLE_BOUND = common dso_local global i32 0, align 4
@UV_HANDLE_TTY_READABLE = common dso_local global i32 0, align 4
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@uv_null_buf_ = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@ANSI_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tty_init(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 (...) @uv__once_init()
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @uv__get_osfhandle(i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @UV_EBADF, align 4
  store i32 %22, i32* %5, align 4
  br label %148

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 2
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %32 = call i32 @DuplicateHandle(i64 %27, i64 %28, i64 %29, i64* %12, i32 0, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 @uv_translate_sys_error(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %148

37:                                               ; preds = %26
  store i32 -1, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i64, i64* %12, align 8
  %40 = call i64 @GetNumberOfConsoleInputEvents(i64 %39, i32* %11)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @GetConsoleScreenBufferInfo(i64 %44, i32* %13)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @uv_translate_sys_error(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %148

50:                                               ; preds = %43
  %51 = call i32 @uv_sem_wait(i32* @uv_tty_output_lock)
  %52 = load i64, i64* @uv__need_check_vterm_state, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @uv__determine_vterm_state(i64 %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = call i32 @uv_tty_capture_initial_style(i32* %13)
  %59 = call i32 @uv_tty_update_virtual_window(i32* %13)
  %60 = call i32 @uv_sem_post(i32* @uv_tty_output_lock)
  br label %61

61:                                               ; preds = %57, %38
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = bitcast %struct.TYPE_11__* %63 to i32*
  %65 = load i32, i32* @UV_TTY, align 4
  %66 = call i32 @uv_stream_init(i32* %62, i32* %64, i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = bitcast %struct.TYPE_11__* %67 to i32*
  %69 = call i32 @uv_connection_init(i32* %68)
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @UV_HANDLE_BOUND, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %124

86:                                               ; preds = %61
  %87 = load i32, i32* @UV_HANDLE_TTY_READABLE, align 4
  %88 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @uv_null_buf_, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  store i32 %98, i32* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = call i32 @memset(i32* %122, i32 0, i32 4)
  br label %147

124:                                              ; preds = %61
  %125 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @ANSI_NORMAL, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 8
  br label %147

147:                                              ; preds = %124, %86
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %47, %34, %21
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @uv__once_init(...) #1

declare dso_local i64 @uv__get_osfhandle(i32) #1

declare dso_local i32 @DuplicateHandle(i64, i64, i64, i64*, i32, i32, i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetNumberOfConsoleInputEvents(i64, i32*) #1

declare dso_local i32 @GetConsoleScreenBufferInfo(i64, i32*) #1

declare dso_local i32 @uv_sem_wait(i32*) #1

declare dso_local i32 @uv__determine_vterm_state(i64) #1

declare dso_local i32 @uv_tty_capture_initial_style(i32*) #1

declare dso_local i32 @uv_tty_update_virtual_window(i32*) #1

declare dso_local i32 @uv_sem_post(i32*) #1

declare dso_local i32 @uv_stream_init(i32*, i32*, i32) #1

declare dso_local i32 @uv_connection_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
