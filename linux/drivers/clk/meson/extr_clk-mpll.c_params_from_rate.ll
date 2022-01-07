; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-mpll.c_params_from_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-mpll.c_params_from_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDM_DEN = common dso_local global i32 0, align 4
@CLK_MESON_MPLL_ROUND_CLOSEST = common dso_local global i32 0, align 4
@N2_MIN = common dso_local global i32 0, align 4
@N2_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i32*, i32)* @params_from_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @params_from_rate(i64 %0, i64 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @do_div(i32 %15, i64 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @SDM_DEN, align 4
  %19 = load i32, i32* %12, align 4
  %20 = mul i32 %19, %18
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @CLK_MESON_MPLL_ROUND_CLOSEST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %26, i64 %27)
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %35

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @DIV_ROUND_UP_ULL(i32 %31, i64 %32)
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SDM_DEN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @N2_MIN, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @N2_MIN, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 0, i32* %51, align 4
  br label %66

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @N2_MAX, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @N2_MAX, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @SDM_DEN, align 4
  %60 = sub i32 %59, 1
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  br label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %48
  ret void
}

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i64) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
