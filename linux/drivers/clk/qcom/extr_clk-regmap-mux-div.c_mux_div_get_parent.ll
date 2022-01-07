; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap_mux_div = type { i64* }

@.str = private unnamed_addr constant [35 x i8] c"%s: Can't find parent with src %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*)* @mux_div_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mux_div_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_regmap_mux_div*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw* %9)
  store %struct.clk_regmap_mux_div* %10, %struct.clk_regmap_mux_div** %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call i8* @clk_hw_get_name(%struct.clk_hw* %11)
  store i8* %12, i8** %5, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %4, align 8
  %14 = call i32 @mux_div_get_src_div(%struct.clk_regmap_mux_div* %13, i64* %8, i64* %7)
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %18 = call i64 @clk_hw_get_num_parents(%struct.clk_hw* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %4, align 8
  %23 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %2, align 8
  br label %39

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %36, i64 %37)
  store i64 0, i64* %2, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @mux_div_get_src_div(%struct.clk_regmap_mux_div*, i64*, i64*) #1

declare dso_local i64 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @pr_err(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
