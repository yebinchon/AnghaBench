; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-vco-pll.c_pll_calc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-vco-pll.c_pll_calc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_rate_tbl = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pll_rate_tbl*, i64, i32, i64*)* @pll_calc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_calc_rate(%struct.pll_rate_tbl* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.pll_rate_tbl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pll_rate_tbl* %0, %struct.pll_rate_tbl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %12, i64 %14
  %16 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 256, i32 1
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %9, align 8
  %22 = mul i64 2, %21
  %23 = udiv i64 %22, 10000
  %24 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %24, i64 %26
  %28 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %23, %30
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %33, i64 %35
  %37 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %32, %38
  %40 = zext i32 %39 to i64
  %41 = udiv i64 %31, %40
  store i64 %41, i64* %9, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %4
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %46, i64 %48
  %50 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %45, %53
  %55 = mul i64 %54, 10000
  %56 = load i64*, i64** %8, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %44, %4
  %58 = load i64, i64* %9, align 8
  %59 = mul i64 %58, 10000
  ret i64 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
