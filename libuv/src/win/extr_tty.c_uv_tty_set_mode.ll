; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_tty_set_mode.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_tty_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32* }

@UV_HANDLE_TTY_READABLE = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_HANDLE_TTY_RAW = common dso_local global i32 0, align 4
@ENABLE_ECHO_INPUT = common dso_local global i32 0, align 4
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4
@ENABLE_PROCESSED_INPUT = common dso_local global i32 0, align 4
@ENABLE_WINDOW_INPUT = common dso_local global i32 0, align 4
@UV_ENOTSUP = common dso_local global i32 0, align 4
@UV_HANDLE_READING = common dso_local global i32 0, align 4
@uv_tty_output_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tty_set_mode(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @UV_HANDLE_TTY_READABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @UV_EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %119

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UV_HANDLE_TTY_RAW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %24, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %119

36:                                               ; preds = %19
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %48 [
    i32 129, label %38
    i32 128, label %44
    i32 130, label %46
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %40 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ENABLE_PROCESSED_INPUT, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %6, align 4
  br label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @ENABLE_WINDOW_INPUT, align 4
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %36
  %47 = load i32, i32* @UV_ENOTSUP, align 4
  store i32 %47, i32* %3, align 4
  br label %119

48:                                               ; preds = %36
  %49 = load i32, i32* @UV_EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %119

50:                                               ; preds = %44, %38
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @UV_HANDLE_READING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  store i8 1, i8* %7, align 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %9, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = call i32 @uv_tty_read_stop(%struct.TYPE_5__* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @uv_translate_sys_error(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %119

71:                                               ; preds = %57
  br label %73

72:                                               ; preds = %50
  store i8 0, i8* %7, align 1
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  br label %73

73:                                               ; preds = %72, %71
  %74 = call i32 @uv_sem_wait(i32* @uv_tty_output_lock)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @SetConsoleMode(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = call i32 (...) @GetLastError()
  %83 = call i32 @uv_translate_sys_error(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = call i32 @uv_sem_post(i32* @uv_tty_output_lock)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %119

86:                                               ; preds = %73
  %87 = call i32 @uv_sem_post(i32* @uv_tty_output_lock)
  %88 = load i32, i32* @UV_HANDLE_TTY_RAW, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* @UV_HANDLE_TTY_RAW, align 4
  br label %99

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i8, i8* %7, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @uv_tty_read_start(%struct.TYPE_5__* %108, i32* %109, i32* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @uv_translate_sys_error(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %119

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %99
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %114, %81, %68, %48, %46, %35, %17
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @uv_tty_read_stop(%struct.TYPE_5__*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @uv_sem_wait(i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @uv_sem_post(i32*) #1

declare dso_local i32 @uv_tty_read_start(%struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
