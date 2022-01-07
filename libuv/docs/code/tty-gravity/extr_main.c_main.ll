; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/tty-gravity/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/tty-gravity/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop = common dso_local global i32 0, align 4
@tty = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not get TTY information\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Width %d, height %d\0A\00", align 1
@tick = common dso_local global i32 0, align 4
@update = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @uv_default_loop()
  store i32 %2, i32* @loop, align 4
  %3 = load i32, i32* @loop, align 4
  %4 = load i32, i32* @STDOUT_FILENO, align 4
  %5 = call i32 @uv_tty_init(i32 %3, i32* @tty, i32 %4, i32 0)
  %6 = call i32 @uv_tty_set_mode(i32* @tty, i32 0)
  %7 = call i64 @uv_tty_get_winsize(i32* @tty, i32* @width, i32* @height)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @uv_tty_reset_mode()
  store i32 1, i32* %1, align 4
  br label %25

13:                                               ; preds = %0
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* @width, align 4
  %16 = load i32, i32* @height, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* @loop, align 4
  %19 = call i32 @uv_timer_init(i32 %18, i32* @tick)
  %20 = load i32, i32* @update, align 4
  %21 = call i32 @uv_timer_start(i32* @tick, i32 %20, i32 200, i32 200)
  %22 = load i32, i32* @loop, align 4
  %23 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %24 = call i32 @uv_run(i32 %22, i32 %23)
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %13, %9
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_tty_init(i32, i32*, i32, i32) #1

declare dso_local i32 @uv_tty_set_mode(i32*, i32) #1

declare dso_local i64 @uv_tty_get_winsize(i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @uv_tty_reset_mode(...) #1

declare dso_local i32 @uv_timer_init(i32, i32*) #1

declare dso_local i32 @uv_timer_start(i32*, i32, i32, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
