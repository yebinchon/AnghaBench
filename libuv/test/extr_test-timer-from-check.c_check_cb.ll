; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-timer-from-check.c_check_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-timer-from-check.c_check_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_handle = common dso_local global i32 0, align 4
@timer_handle = common dso_local global i32 0, align 4
@timer_cb = common dso_local global i32 0, align 4
@prepare_handle = common dso_local global i32 0, align 4
@prepare_cb = common dso_local global i32 0, align 4
@prepare_cb_called = common dso_local global i64 0, align 8
@check_cb_called = common dso_local global i64 0, align 8
@timer_cb_called = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i64 @uv_check_stop(i32* @check_handle)
  %4 = icmp eq i64 0, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @ASSERT(i32 %5)
  %7 = call i64 @uv_timer_stop(i32* @timer_handle)
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @timer_cb, align 4
  %12 = call i64 @uv_timer_start(i32* @timer_handle, i32 %11, i32 50, i32 0)
  %13 = icmp eq i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @prepare_cb, align 4
  %17 = call i64 @uv_prepare_start(i32* @prepare_handle, i32 %16)
  %18 = icmp eq i64 0, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i64, i64* @prepare_cb_called, align 8
  %22 = icmp eq i64 0, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i64, i64* @check_cb_called, align 8
  %26 = icmp eq i64 0, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i64, i64* @timer_cb_called, align 8
  %30 = icmp eq i64 0, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i64, i64* @check_cb_called, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @check_cb_called, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_check_stop(i32*) #1

declare dso_local i64 @uv_timer_stop(i32*) #1

declare dso_local i64 @uv_timer_start(i32*, i32, i32, i32) #1

declare dso_local i64 @uv_prepare_start(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
