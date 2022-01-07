; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.clk_regmap_mux_div = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @mux_div_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_div_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_regmap_mux_div*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.clk_hw*, align 8
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw* %15)
  store %struct.clk_regmap_mux_div* %16, %struct.clk_regmap_mux_div** %6, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %18 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %80, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %23 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %20
  %26 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %26, i32 %27)
  store %struct.clk_hw* %28, %struct.clk_hw** %13, align 8
  %29 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  %30 = call i64 @clk_hw_get_rate(%struct.clk_hw* %29)
  store i64 %30, i64* %14, align 8
  %31 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %32 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %76, %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @mult_frac(i64 %41, i32 %42, i32 2)
  store i64 %43, i64* %14, align 8
  %44 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i64 @clk_hw_round_rate(%struct.clk_hw* %44, i64 %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @mult_frac(i64 %47, i32 2, i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @is_better_rate(i64 %50, i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %40
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %59 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %62 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  %64 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %65 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %64, i32 0, i32 2
  store %struct.clk_hw* %63, %struct.clk_hw** %65, align 8
  br label %66

66:                                               ; preds = %55, %40
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %66
  br label %79

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %36

79:                                               ; preds = %74, %36
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %20

83:                                               ; preds = %20
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %90

89:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @mult_frac(i64, i32, i32) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @is_better_rate(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
