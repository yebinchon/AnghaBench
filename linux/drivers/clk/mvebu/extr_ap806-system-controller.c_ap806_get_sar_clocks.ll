; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_ap806-system-controller.c_ap806_get_sar_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_ap806-system-controller.c_ap806_get_sar_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @ap806_get_sar_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap806_get_sar_clocks(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %54 [
    i32 0, label %9
    i32 1, label %12
    i32 6, label %15
    i32 7, label %18
    i32 4, label %21
    i32 11, label %24
    i32 13, label %27
    i32 26, label %30
    i32 20, label %33
    i32 23, label %36
    i32 25, label %39
    i32 19, label %42
    i32 29, label %45
    i32 28, label %48
    i32 27, label %51
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %6, align 8
  store i32 2000, i32* %10, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 600, i32* %11, align 4
  br label %57

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  store i32 2000, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 525, i32* %14, align 4
  br label %57

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  store i32 1800, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 600, i32* %17, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  store i32 1800, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 525, i32* %20, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  store i32 1600, i32* %22, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 400, i32* %23, align 4
  br label %57

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  store i32 1600, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 450, i32* %26, align 4
  br label %57

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  store i32 1600, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 525, i32* %29, align 4
  br label %57

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  store i32 1400, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 400, i32* %32, align 4
  br label %57

33:                                               ; preds = %3
  %34 = load i32*, i32** %6, align 8
  store i32 1300, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 400, i32* %35, align 4
  br label %57

36:                                               ; preds = %3
  %37 = load i32*, i32** %6, align 8
  store i32 1300, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 325, i32* %38, align 4
  br label %57

39:                                               ; preds = %3
  %40 = load i32*, i32** %6, align 8
  store i32 1200, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 400, i32* %41, align 4
  br label %57

42:                                               ; preds = %3
  %43 = load i32*, i32** %6, align 8
  store i32 1000, i32* %43, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 325, i32* %44, align 4
  br label %57

45:                                               ; preds = %3
  %46 = load i32*, i32** %6, align 8
  store i32 1000, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 400, i32* %47, align 4
  br label %57

48:                                               ; preds = %3
  %49 = load i32*, i32** %6, align 8
  store i32 800, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 400, i32* %50, align 4
  br label %57

51:                                               ; preds = %3
  %52 = load i32*, i32** %6, align 8
  store i32 600, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 400, i32* %53, align 4
  br label %57

54:                                               ; preds = %3
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
