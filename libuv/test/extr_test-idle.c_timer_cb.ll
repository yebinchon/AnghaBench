; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-idle.c_timer_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-idle.c_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer_handle = common dso_local global i32 0, align 4
@idle_handle = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@check_handle = common dso_local global i32 0, align 4
@timer_cb_called = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"timer_cb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, @timer_handle
  %5 = zext i1 %4 to i32
  %6 = call i32 @ASSERT(i32 %5)
  %7 = load i32, i32* @close_cb, align 4
  %8 = call i32 @uv_close(i32* @idle_handle, i32 %7)
  %9 = load i32, i32* @close_cb, align 4
  %10 = call i32 @uv_close(i32* @check_handle, i32 %9)
  %11 = load i32, i32* @close_cb, align 4
  %12 = call i32 @uv_close(i32* @timer_handle, i32 %11)
  %13 = load i32, i32* @timer_cb_called, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @timer_cb_called, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* @timer_cb_called, align 4
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fflush(i32 %18)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
