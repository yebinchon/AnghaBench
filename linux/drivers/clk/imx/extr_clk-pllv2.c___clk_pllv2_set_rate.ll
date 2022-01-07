; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv2.c___clk_pllv2_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv2.c___clk_pllv2_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*, i64*, i64*)* @__clk_pllv2_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_pllv2_set_rate(i64 %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 999999, i64* %16, align 8
  %19 = load i64, i64* %8, align 8
  %20 = mul i64 4, %19
  store i64 %20, i64* %18, align 8
  store i64 -1, i64* %13, align 8
  store i64 -1, i64* %14, align 8
  br label %21

21:                                               ; preds = %30, %5
  %22 = load i64, i64* %14, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %14, align 8
  %24 = icmp slt i64 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* %13, align 8
  %27 = icmp slt i64 %26, 5
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %14, align 8
  %33 = add nsw i64 %32, 1
  %34 = mul i64 %31, %33
  %35 = load i64, i64* %18, align 8
  %36 = udiv i64 %34, %35
  store i64 %36, i64* %13, align 8
  br label %21

37:                                               ; preds = %28
  %38 = load i64, i64* %13, align 8
  %39 = icmp sgt i64 %38, 15
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %69

43:                                               ; preds = %37
  %44 = load i64, i64* %14, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %14, align 8
  %48 = add nsw i64 %47, 1
  %49 = mul i64 %46, %48
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %13, align 8
  %52 = mul i64 %50, %51
  %53 = sub i64 %49, %52
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* %18, align 8
  %56 = udiv i64 %55, 1000000
  %57 = call i32 @do_div(i64 %54, i64 %56)
  %58 = load i64, i64* %17, align 8
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %13, align 8
  %60 = shl i64 %59, 4
  %61 = load i64, i64* %14, align 8
  %62 = or i64 %60, %61
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64*, i64** %10, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i64*, i64** %11, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %43, %40
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
