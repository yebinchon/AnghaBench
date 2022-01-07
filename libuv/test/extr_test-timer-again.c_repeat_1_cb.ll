; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-timer-again.c_repeat_1_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-timer-again.c_repeat_1_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repeat_1 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"repeat_1_cb called after %ld ms\0A\00", align 1
@start_time = common dso_local global i64 0, align 8
@repeat_1_cb_called = common dso_local global i32 0, align 4
@repeat_2 = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@repeat_2_cb_allowed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @repeat_1_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repeat_1_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, @repeat_1
  %6 = zext i1 %5 to i32
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @uv_timer_get_repeat(i32* %8)
  %10 = icmp eq i32 %9, 50
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (...) @uv_default_loop()
  %15 = call i64 @uv_now(i32 %14)
  %16 = load i64, i64* @start_time, align 8
  %17 = sub nsw i64 %15, %16
  %18 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = load i32, i32* @repeat_1_cb_called, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @repeat_1_cb_called, align 4
  %23 = call i32 @uv_timer_again(i32* @repeat_2)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* @repeat_1_cb_called, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @close_cb, align 4
  %33 = call i32 @uv_close(i32* %31, i32 %32)
  store i32 1, i32* @repeat_2_cb_allowed, align 4
  br label %34

34:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_timer_get_repeat(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @uv_now(i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @uv_timer_again(i32*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
