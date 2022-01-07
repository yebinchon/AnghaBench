; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap_mux_div = type { i64* }

@.str = private unnamed_addr constant [26 x i8] c"%s: Can't find parent %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @mux_div_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mux_div_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_regmap_mux_div*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.clk_hw*, align 8
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw* %14)
  store %struct.clk_regmap_mux_div* %15, %struct.clk_regmap_mux_div** %6, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %19 = call i8* @clk_hw_get_name(%struct.clk_hw* %18)
  store i8* %19, i8** %11, align 8
  %20 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %21 = call i32 @mux_div_get_src_div(%struct.clk_regmap_mux_div* %20, i64* %8, i64* %7)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %47, %2
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %29 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %27, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %37, i32 %38)
  store %struct.clk_hw* %39, %struct.clk_hw** %12, align 8
  %40 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %41 = call i64 @clk_hw_get_rate(%struct.clk_hw* %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i64 @mult_frac(i64 %42, i32 2, i64 %44)
  store i64 %45, i64* %3, align 8
  br label %54

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %51, i64 %52)
  store i64 0, i64* %3, align 8
  br label %54

54:                                               ; preds = %50, %36
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @mux_div_get_src_div(%struct.clk_regmap_mux_div*, i64*, i64*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @mult_frac(i64, i32, i64) #1

declare dso_local i32 @pr_err(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
