; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux.c_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux.c_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap_mux = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.clk_regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_regmap_mux*, align 8
  %6 = alloca %struct.clk_regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_regmap_mux* @to_clk_regmap_mux(%struct.clk_hw* %9)
  store %struct.clk_regmap_mux* %10, %struct.clk_regmap_mux** %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %11)
  store %struct.clk_regmap* %12, %struct.clk_regmap** %6, align 8
  %13 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %5, align 8
  %14 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %5, align 8
  %17 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = sub nsw i64 %20, 1
  %22 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %5, align 8
  %23 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @GENMASK(i64 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %5, align 8
  %27 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %5, align 8
  %32 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %30, %2
  %39 = load i64, i64* %4, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %5, align 8
  %42 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.clk_regmap*, %struct.clk_regmap** %6, align 8
  %47 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.clk_regmap_mux*, %struct.clk_regmap_mux** %5, align 8
  %50 = getelementptr inbounds %struct.clk_regmap_mux, %struct.clk_regmap_mux* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @regmap_update_bits(i32 %48, i32 %51, i32 %52, i32 %53)
  ret i32 %54
}

declare dso_local %struct.clk_regmap_mux* @to_clk_regmap_mux(%struct.clk_hw*) #1

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
