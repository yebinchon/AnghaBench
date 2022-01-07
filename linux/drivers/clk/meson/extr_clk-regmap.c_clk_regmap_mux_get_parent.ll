; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.clk_regmap_mux_data = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_regmap_mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_regmap_mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_regmap*, align 8
  %5 = alloca %struct.clk_regmap_mux_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %8)
  store %struct.clk_regmap* %9, %struct.clk_regmap** %4, align 8
  %10 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %11 = call %struct.clk_regmap_mux_data* @clk_get_regmap_mux_data(%struct.clk_regmap* %10)
  store %struct.clk_regmap_mux_data* %11, %struct.clk_regmap_mux_data** %5, align 8
  %12 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %13 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clk_regmap_mux_data*, %struct.clk_regmap_mux_data** %5, align 8
  %16 = getelementptr inbounds %struct.clk_regmap_mux_data, %struct.clk_regmap_mux_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regmap_read(i32 %14, i32 %17, i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.clk_regmap_mux_data*, %struct.clk_regmap_mux_data** %5, align 8
  %25 = getelementptr inbounds %struct.clk_regmap_mux_data, %struct.clk_regmap_mux_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = lshr i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.clk_regmap_mux_data*, %struct.clk_regmap_mux_data** %5, align 8
  %30 = getelementptr inbounds %struct.clk_regmap_mux_data, %struct.clk_regmap_mux_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %35 = load %struct.clk_regmap_mux_data*, %struct.clk_regmap_mux_data** %5, align 8
  %36 = getelementptr inbounds %struct.clk_regmap_mux_data, %struct.clk_regmap_mux_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.clk_regmap_mux_data*, %struct.clk_regmap_mux_data** %5, align 8
  %39 = getelementptr inbounds %struct.clk_regmap_mux_data, %struct.clk_regmap_mux_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @clk_mux_val_to_index(%struct.clk_hw* %34, i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %23, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.clk_regmap_mux_data* @clk_get_regmap_mux_data(%struct.clk_regmap*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_mux_val_to_index(%struct.clk_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
