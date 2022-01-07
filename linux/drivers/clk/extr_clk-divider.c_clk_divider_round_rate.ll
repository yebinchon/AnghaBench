; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_clk_divider_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_clk_divider_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider = type { i32, i32, i32, i32 }

@CLK_DIVIDER_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_divider_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_divider_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_divider*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %10)
  store %struct.clk_divider* %11, %struct.clk_divider** %8, align 8
  %12 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %13 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLK_DIVIDER_READ_ONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %3
  %19 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %20 = call i32 @clk_div_readl(%struct.clk_divider* %19)
  %21 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %22 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %20, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %26 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_div_mask(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %35 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %38 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %41 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @divider_ro_round_rate(%struct.clk_hw* %31, i64 %32, i64* %33, i32 %36, i32 %39, i32 %42, i32 %43)
  store i64 %44, i64* %4, align 8
  br label %59

45:                                               ; preds = %3
  %46 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %50 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %53 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %56 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @divider_round_rate(%struct.clk_hw* %46, i64 %47, i64* %48, i32 %51, i32 %54, i32 %57)
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %45, %18
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @clk_div_readl(%struct.clk_divider*) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i64 @divider_ro_round_rate(%struct.clk_hw*, i64, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @divider_round_rate(%struct.clk_hw*, i64, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
