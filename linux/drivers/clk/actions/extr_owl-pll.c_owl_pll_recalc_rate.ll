; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-pll.c_owl_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-pll.c_owl_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.owl_pll = type { %struct.owl_clk_common, %struct.owl_pll_hw }
%struct.owl_clk_common = type { i32 }
%struct.owl_pll_hw = type { i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @owl_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @owl_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.owl_pll*, align 8
  %7 = alloca %struct.owl_pll_hw*, align 8
  %8 = alloca %struct.owl_clk_common*, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.owl_pll* @hw_to_owl_pll(%struct.clk_hw* %10)
  store %struct.owl_pll* %11, %struct.owl_pll** %6, align 8
  %12 = load %struct.owl_pll*, %struct.owl_pll** %6, align 8
  %13 = getelementptr inbounds %struct.owl_pll, %struct.owl_pll* %12, i32 0, i32 1
  store %struct.owl_pll_hw* %13, %struct.owl_pll_hw** %7, align 8
  %14 = load %struct.owl_pll*, %struct.owl_pll** %6, align 8
  %15 = getelementptr inbounds %struct.owl_pll, %struct.owl_pll* %14, i32 0, i32 0
  store %struct.owl_clk_common* %15, %struct.owl_clk_common** %8, align 8
  %16 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %17 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.owl_clk_common*, %struct.owl_clk_common** %8, align 8
  %22 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %25 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @regmap_read(i32 %23, i32 %26, i64* %9)
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %30 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %28, %31
  store i64 %32, i64* %9, align 8
  %33 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %34 = call i64 @mul_mask(%struct.owl_pll_hw* %33)
  %35 = load i64, i64* %9, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %38 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @_get_table_rate(i64 %39, i64 %40)
  store i64 %41, i64* %3, align 8
  br label %73

42:                                               ; preds = %2
  %43 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %44 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %49 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %3, align 8
  br label %73

51:                                               ; preds = %42
  %52 = load %struct.owl_clk_common*, %struct.owl_clk_common** %8, align 8
  %53 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %56 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regmap_read(i32 %54, i32 %57, i64* %9)
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %61 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = lshr i64 %59, %62
  store i64 %63, i64* %9, align 8
  %64 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %65 = call i64 @mul_mask(%struct.owl_pll_hw* %64)
  %66 = load i64, i64* %9, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %9, align 8
  %68 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %7, align 8
  %69 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = mul i64 %70, %71
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %51, %47, %20
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local %struct.owl_pll* @hw_to_owl_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i64 @mul_mask(%struct.owl_pll_hw*) #1

declare dso_local i64 @_get_table_rate(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
