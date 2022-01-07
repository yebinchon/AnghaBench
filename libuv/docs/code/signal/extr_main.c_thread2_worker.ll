; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/signal/extr_main.c_thread2_worker.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/signal/extr_main.c_thread2_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signal_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@UV_RUN_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread2_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32* (...) @create_loop()
  store i32* %7, i32** %3, align 8
  %8 = call i32* (...) @create_loop()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @uv_signal_init(i32* %9, i32* %5)
  %11 = load i32, i32* @signal_handler, align 4
  %12 = load i32, i32* @SIGUSR1, align 4
  %13 = call i32 @uv_signal_start(i32* %5, i32 %11, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @uv_signal_init(i32* %14, i32* %6)
  %16 = load i32, i32* @signal_handler, align 4
  %17 = load i32, i32* @SIGUSR1, align 4
  %18 = call i32 @uv_signal_start(i32* %6, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %31, %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @UV_RUN_NOWAIT, align 4
  %22 = call i64 @uv_run(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @UV_RUN_NOWAIT, align 4
  %27 = call i64 @uv_run(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  br label %19

32:                                               ; preds = %29
  ret void
}

declare dso_local i32* @create_loop(...) #1

declare dso_local i32 @uv_signal_init(i32*, i32*) #1

declare dso_local i32 @uv_signal_start(i32*, i32, i32) #1

declare dso_local i64 @uv_run(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
