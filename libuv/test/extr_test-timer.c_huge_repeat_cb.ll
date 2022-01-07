; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-timer.c_huge_repeat_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-timer.c_huge_repeat_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge_repeat_cb.ncalls = internal global i32 0, align 4
@huge_timer1 = common dso_local global i32 0, align 4
@tiny_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @huge_repeat_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @huge_repeat_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @huge_repeat_cb.ncalls, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = icmp eq i32* %6, @huge_timer1
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  br label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = icmp eq i32* %11, @tiny_timer
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load i32, i32* @huge_repeat_cb.ncalls, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @huge_repeat_cb.ncalls, align 4
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32 @uv_close(i32* @tiny_timer, i32* null)
  %21 = call i32 @uv_close(i32* @huge_timer1, i32* null)
  br label %22

22:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
