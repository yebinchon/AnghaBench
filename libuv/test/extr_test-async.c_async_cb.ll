; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-async.c_async_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-async.c_async_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@async = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4
@async_cb_called = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@prepare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @async_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, @async
  %6 = zext i1 %5 to i32
  %7 = call i32 @ASSERT(i32 %6)
  %8 = call i32 @uv_mutex_lock(i32* @mutex)
  %9 = load i32, i32* @async_cb_called, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @async_cb_called, align 4
  store i32 %10, i32* %3, align 4
  %11 = call i32 @uv_mutex_unlock(i32* @mutex)
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @close_cb, align 4
  %16 = call i32 @uv_close(i32* @async, i32 %15)
  %17 = load i32, i32* @close_cb, align 4
  %18 = call i32 @uv_close(i32* @prepare, i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
