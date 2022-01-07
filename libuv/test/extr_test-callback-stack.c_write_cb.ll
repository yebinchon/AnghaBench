; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-callback-stack.c_write_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-callback-stack.c_write_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nested = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"write_cb must be called from a fresh stack\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Data written. 500ms timeout...\00", align 1
@timer = common dso_local global i32 0, align 4
@timer_cb = common dso_local global i32 0, align 4
@write_cb_called = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @write_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i64, i64* @nested, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i1 [ false, %2 ], [ true, %12 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @nested, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @nested, align 8
  %20 = call i32 (...) @uv_default_loop()
  %21 = call i32 @uv_timer_init(i32 %20, i32* @timer)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @timer_cb, align 4
  %27 = call i32 @uv_timer_start(i32* @timer, i32 %26, i32 500, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i64, i64* @nested, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* @nested, align 8
  %34 = load i32, i32* @write_cb_called, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @write_cb_called, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @uv_timer_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_timer_start(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
