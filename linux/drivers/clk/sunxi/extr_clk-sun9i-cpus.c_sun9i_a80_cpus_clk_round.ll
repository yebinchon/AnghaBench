; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-cpus.c_sun9i_a80_cpus_clk_round.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-cpus.c_sun9i_a80_cpus_clk_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUN9I_CPUS_MUX_PARENT_PLL4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64*, i64, i64)* @sun9i_a80_cpus_clk_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun9i_a80_cpus_clk_round(i64 %0, i64* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 1, i64* %12, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %19, %15, %5
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i64 @DIV_ROUND_UP(i64 %22, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @SUN9I_CPUS_MUX_PARENT_PLL4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = load i64, i64* %11, align 8
  %31 = icmp sgt i64 %30, 4
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  store i64 %36, i64* %12, align 8
  store i64 1, i64* %11, align 8
  br label %54

37:                                               ; preds = %32
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %38, 64
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @DIV_ROUND_UP(i64 %41, i32 2)
  store i64 %42, i64* %12, align 8
  store i64 2, i64* %11, align 8
  br label %53

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = icmp slt i64 %44, 96
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @DIV_ROUND_UP(i64 %47, i32 3)
  store i64 %48, i64* %12, align 8
  store i64 3, i64* %11, align 8
  br label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @DIV_ROUND_UP(i64 %50, i32 4)
  store i64 %51, i64* %12, align 8
  store i64 4, i64* %11, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54, %29, %21
  %56 = load i64*, i64** %7, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = sub nsw i64 %59, 1
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = sub nsw i64 %62, 1
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = udiv i64 %66, %67
  %69 = load i64, i64* %11, align 8
  %70 = udiv i64 %68, %69
  ret i64 %70
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
