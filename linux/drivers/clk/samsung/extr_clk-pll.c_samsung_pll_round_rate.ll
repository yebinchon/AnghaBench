; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.samsung_clk_pll = type { i32, %struct.samsung_pll_rate_table* }
%struct.samsung_pll_rate_table = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @samsung_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @samsung_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.samsung_clk_pll*, align 8
  %9 = alloca %struct.samsung_pll_rate_table*, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw* %11)
  store %struct.samsung_clk_pll* %12, %struct.samsung_clk_pll** %8, align 8
  %13 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %8, align 8
  %14 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %13, i32 0, i32 1
  %15 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %14, align 8
  store %struct.samsung_pll_rate_table* %15, %struct.samsung_pll_rate_table** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %39, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %8, align 8
  %19 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %24, i64 %26
  %28 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %23, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %32, i64 %34
  %36 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  br label %50

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %43, i64 %46
  %48 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %42, %31
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
