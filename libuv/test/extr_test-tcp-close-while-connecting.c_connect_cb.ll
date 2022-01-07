; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-close-while-connecting.c_connect_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-close-while-connecting.c_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_ECANCELED = common dso_local global i32 0, align 4
@UV_ENETUNREACH = common dso_local global i32 0, align 4
@timer2_handle = common dso_local global i32 0, align 4
@connect_cb_called = common dso_local global i32 0, align 4
@netunreach_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @connect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @UV_ECANCELED, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @UV_ENETUNREACH, align 4
  %11 = icmp eq i32 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = call i32 @uv_timer_stop(i32* @timer2_handle)
  %17 = load i32, i32* @connect_cb_called, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @connect_cb_called, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @UV_ENETUNREACH, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @netunreach_errors, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @netunreach_errors, align 4
  br label %25

25:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_timer_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
