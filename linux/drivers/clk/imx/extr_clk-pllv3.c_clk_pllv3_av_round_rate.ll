; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_av_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_av_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_pllv3_av_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pllv3_av_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = mul i64 %17, 27
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = mul i64 %19, 54
  store i64 %20, i64* %9, align 8
  store i64 1000000, i64* %12, align 8
  store i64 1073741823, i64* %13, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %5, align 8
  br label %33

26:                                               ; preds = %3
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = udiv i64 %40, %41
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = mul i64 %44, %45
  %47 = sub i64 %43, %46
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %14, align 8
  %50 = mul i64 %49, %48
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @do_div(i64 %51, i64 %52)
  %54 = load i64, i64* %14, align 8
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %14, align 8
  %58 = mul i64 %57, %56
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @do_div(i64 %59, i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %10, align 8
  %64 = mul i64 %62, %63
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %64, %65
  ret i64 %66
}

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
