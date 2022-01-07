; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-pll.c_owl_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-pll.c_owl_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.owl_pll = type { %struct.owl_pll_hw }
%struct.owl_pll_hw = type { i64, i64, i64 }
%struct.clk_pll_table = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @owl_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @owl_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.owl_pll*, align 8
  %9 = alloca %struct.owl_pll_hw*, align 8
  %10 = alloca %struct.clk_pll_table*, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.owl_pll* @hw_to_owl_pll(%struct.clk_hw* %12)
  store %struct.owl_pll* %13, %struct.owl_pll** %8, align 8
  %14 = load %struct.owl_pll*, %struct.owl_pll** %8, align 8
  %15 = getelementptr inbounds %struct.owl_pll, %struct.owl_pll* %14, i32 0, i32 0
  store %struct.owl_pll_hw* %15, %struct.owl_pll_hw** %9, align 8
  %16 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %9, align 8
  %17 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %9, align 8
  %22 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.clk_pll_table* @_get_pll_table(i64 %23, i64 %24)
  store %struct.clk_pll_table* %25, %struct.clk_pll_table** %10, align 8
  %26 = load %struct.clk_pll_table*, %struct.clk_pll_table** %10, align 8
  %27 = getelementptr inbounds %struct.clk_pll_table, %struct.clk_pll_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  br label %47

29:                                               ; preds = %3
  %30 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %9, align 8
  %31 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %9, align 8
  %36 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  br label %47

38:                                               ; preds = %29
  %39 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @owl_pll_calculate_mul(%struct.owl_pll_hw* %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %9, align 8
  %43 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = mul nsw i64 %44, %45
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %38, %34, %20
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local %struct.owl_pll* @hw_to_owl_pll(%struct.clk_hw*) #1

declare dso_local %struct.clk_pll_table* @_get_pll_table(i64, i64) #1

declare dso_local i64 @owl_pll_calculate_mul(%struct.owl_pll_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
