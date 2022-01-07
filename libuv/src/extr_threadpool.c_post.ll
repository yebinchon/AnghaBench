; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_threadpool.c_post.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_threadpool.c_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex = common dso_local global i32 0, align 4
@UV__WORK_SLOW_IO = common dso_local global i32 0, align 4
@slow_io_pending_wq = common dso_local global i32 0, align 4
@run_slow_work_message = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@idle_threads = common dso_local global i64 0, align 8
@cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @uv_mutex_lock(i32* @mutex)
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @UV__WORK_SLOW_IO, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @QUEUE_INSERT_TAIL(i32* @slow_io_pending_wq, i32* %10)
  %12 = call i32 @QUEUE_EMPTY(i32* @run_slow_work_message)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call i32 @uv_mutex_unlock(i32* @mutex)
  br label %26

16:                                               ; preds = %9
  store i32* @run_slow_work_message, i32** %3, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @QUEUE_INSERT_TAIL(i32* @wq, i32* %18)
  %20 = load i64, i64* @idle_threads, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @uv_cond_signal(i32* @cond)
  br label %24

24:                                               ; preds = %22, %17
  %25 = call i32 @uv_mutex_unlock(i32* @mutex)
  br label %26

26:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @QUEUE_INSERT_TAIL(i32*, i32*) #1

declare dso_local i32 @QUEUE_EMPTY(i32*) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

declare dso_local i32 @uv_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
