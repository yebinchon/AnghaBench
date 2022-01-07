; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux.c_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux.c_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap_mux = type { i32, i64, i32, i64 }
%struct.clk_regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_regmap_mux*, align 8
  %5 = alloca %struct.clk_regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_regmap_mux* @to_clk_regmap_mux(%struct.clk_hw* %8)
  store %struct.clk_regmap_mux* %9, %struct.clk_regmap_mux** %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %10)
  store %struct.clk_regmap* %11, %struct.clk_regmap** %5, align 8
  %12 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %4, align 8
  %13 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @GENMASK(i64 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %18 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %4, align 8
  %21 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @regmap_read(i32 %19, i32 %22, i32* %7)
  %24 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %4, align 8
  %25 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = lshr i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %4, align 8
  %33 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %38 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %4, align 8
  %39 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @qcom_find_src_index(%struct.clk_hw* %37, i64 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.clk_regmap_mux* @to_clk_regmap_mux(%struct.clk_hw*) #1

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @qcom_find_src_index(%struct.clk_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
