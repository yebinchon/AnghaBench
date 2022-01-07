; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_tty_get_winsize.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_tty_get_winsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@uv_tty_output_lock = common dso_local global i32 0, align 4
@uv_tty_virtual_width = common dso_local global i32 0, align 4
@uv_tty_virtual_height = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tty_get_winsize(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GetConsoleScreenBufferInfo(i32 %11, i32* %8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 @uv_translate_sys_error(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %25

17:                                               ; preds = %3
  %18 = call i32 @uv_sem_wait(i32* @uv_tty_output_lock)
  %19 = call i32 @uv_tty_update_virtual_window(i32* %8)
  %20 = call i32 @uv_sem_post(i32* @uv_tty_output_lock)
  %21 = load i32, i32* @uv_tty_virtual_width, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @uv_tty_virtual_height, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, i32*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @uv_sem_wait(i32*) #1

declare dso_local i32 @uv_tty_update_virtual_window(i32*) #1

declare dso_local i32 @uv_sem_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
