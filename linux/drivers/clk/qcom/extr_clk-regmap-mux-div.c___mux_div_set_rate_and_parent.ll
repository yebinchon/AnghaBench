; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c___mux_div_set_rate_and_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c___mux_div_set_rate_and_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap_mux_div = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64, i32)* @__mux_div_set_rate_and_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mux_div_set_rate_and_parent(%struct.clk_hw* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_regmap_mux_div*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.clk_hw*, align 8
  %19 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %21 = call %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw* %20)
  store %struct.clk_regmap_mux_div* %21, %struct.clk_regmap_mux_div** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %82, %4
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %25 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %28, i32 %29)
  store %struct.clk_hw* %30, %struct.clk_hw** %18, align 8
  %31 = load %struct.clk_hw*, %struct.clk_hw** %18, align 8
  %32 = call i64 @clk_hw_get_rate(%struct.clk_hw* %31)
  store i64 %32, i64* %19, align 8
  %33 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %9, align 8
  %34 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BIT(i32 %35)
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %38

38:                                               ; preds = %78, %27
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @mult_frac(i64 %43, i32 %44, i32 2)
  store i64 %45, i64* %19, align 8
  %46 = load %struct.clk_hw*, %struct.clk_hw** %18, align 8
  %47 = load i64, i64* %19, align 8
  %48 = call i64 @clk_hw_round_rate(%struct.clk_hw* %46, i64 %47)
  store i64 %48, i64* %19, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @mult_frac(i64 %49, i32 2, i32 %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %16, align 8
  %55 = call i64 @is_better_rate(i64 %52, i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %42
  %58 = load i64, i64* %16, align 8
  store i64 %58, i64* %17, align 8
  %59 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %9, align 8
  %60 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %57, %42
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ule i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  br label %81

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %38

81:                                               ; preds = %76, %38
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %15, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %22

85:                                               ; preds = %22
  %86 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %9, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @mux_div_set_src_div(%struct.clk_regmap_mux_div* %86, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %9, align 8
  %95 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %9, align 8
  %98 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %85
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @mult_frac(i64, i32, i32) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @is_better_rate(i64, i64, i64) #1

declare dso_local i32 @mux_div_set_src_div(%struct.clk_regmap_mux_div*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
