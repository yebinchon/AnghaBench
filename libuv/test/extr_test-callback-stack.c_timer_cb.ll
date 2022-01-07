; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-callback-stack.c_timer_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-callback-stack.c_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer = common dso_local global i32 0, align 4
@nested = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"timer_cb must be called from a fresh stack\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Timeout complete. Now read data...\00", align 1
@client = common dso_local global i32 0, align 4
@alloc_cb = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"uv_read_start failed\00", align 1
@timer_cb_called = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, @timer
  %5 = zext i1 %4 to i32
  %6 = call i32 @ASSERT(i32 %5)
  %7 = load i64, i64* @nested, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i1 [ false, %1 ], [ true, %9 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i64, i64* @nested, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @nested, align 8
  %17 = load i32, i32* @alloc_cb, align 4
  %18 = load i32, i32* @read_cb, align 4
  %19 = call i64 @uv_read_start(i32* @client, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = call i32 @FATAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %10
  %24 = load i64, i64* @nested, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* @nested, align 8
  %26 = load i32, i32* @timer_cb_called, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @timer_cb_called, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @close_cb, align 4
  %30 = call i32 @uv_close(i32* %28, i32 %29)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @uv_read_start(i32*, i32, i32) #1

declare dso_local i32 @FATAL(i8*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
