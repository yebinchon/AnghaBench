; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkctrl.c__omap4_is_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkctrl.c__omap4_is_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.omap4_timeout = type { i32 }

@_early_timeout = common dso_local global i64 0, align 8
@timekeeping_suspended = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.omap4_timeout*, i64)* @_omap4_is_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap4_is_timeout(%union.omap4_timeout* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.omap4_timeout*, align 8
  %5 = alloca i64, align 8
  store %union.omap4_timeout* %0, %union.omap4_timeout** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* @_early_timeout, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @timekeeping_suspended, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %union.omap4_timeout*, %union.omap4_timeout** %4, align 8
  %18 = bitcast %union.omap4_timeout* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = sext i32 %19 to i64
  %22 = load i64, i64* %5, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @udelay(i32 2)
  store i32 0, i32* %3, align 4
  br label %49

26:                                               ; preds = %16
  br label %48

27:                                               ; preds = %11
  %28 = load %union.omap4_timeout*, %union.omap4_timeout** %4, align 8
  %29 = bitcast %union.omap4_timeout* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ktime_to_ns(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = call i32 (...) @ktime_get()
  %35 = load %union.omap4_timeout*, %union.omap4_timeout** %4, align 8
  %36 = bitcast %union.omap4_timeout* %35 to i32*
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %49

37:                                               ; preds = %27
  %38 = call i32 (...) @ktime_get()
  %39 = load %union.omap4_timeout*, %union.omap4_timeout** %4, align 8
  %40 = bitcast %union.omap4_timeout* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ktime_us_delta(i32 %38, i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 (...) @cpu_relax()
  store i32 0, i32* %3, align 4
  br label %49

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %26
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %33, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
