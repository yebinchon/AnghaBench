; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_get_pll_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_get_pll_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pll_rate_table = type { i64 }
%struct.samsung_clk_pll = type { i32, %struct.samsung_pll_rate_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.samsung_pll_rate_table* (%struct.samsung_clk_pll*, i64)* @samsung_get_pll_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.samsung_pll_rate_table* @samsung_get_pll_settings(%struct.samsung_clk_pll* %0, i64 %1) #0 {
  %3 = alloca %struct.samsung_pll_rate_table*, align 8
  %4 = alloca %struct.samsung_clk_pll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.samsung_pll_rate_table*, align 8
  %7 = alloca i32, align 4
  store %struct.samsung_clk_pll* %0, %struct.samsung_clk_pll** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %4, align 8
  %9 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %8, i32 0, i32 1
  %10 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %9, align 8
  store %struct.samsung_pll_rate_table* %10, %struct.samsung_pll_rate_table** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %4, align 8
  %14 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %19, i64 %21
  %23 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %18, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %27, i64 %29
  store %struct.samsung_pll_rate_table* %30, %struct.samsung_pll_rate_table** %3, align 8
  br label %36

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %11

35:                                               ; preds = %11
  store %struct.samsung_pll_rate_table* null, %struct.samsung_pll_rate_table** %3, align 8
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %3, align 8
  ret %struct.samsung_pll_rate_table* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
