; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-utils.c_div_frac_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-utils.c_div_frac_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEGRA_DIVIDER_INT = common dso_local global i32 0, align 4
@TEGRA_DIVIDER_ROUND_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @div_frac_get(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %71

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @TEGRA_DIVIDER_INT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = mul nsw i32 %27, %26
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @TEGRA_DIVIDER_ROUND_UP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 1
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @do_div(i32 %42, i64 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @TEGRA_DIVIDER_INT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %71

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @div_mask(i32 %63)
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @div_mask(i32 %67)
  store i32 %68, i32* %6, align 4
  br label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %66, %57, %17
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @div_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
