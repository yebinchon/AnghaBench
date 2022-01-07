; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_div_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_div_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.clk_regmap_div_data = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_regmap_div_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_regmap_div_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_regmap*, align 8
  %7 = alloca %struct.clk_regmap_div_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %10)
  store %struct.clk_regmap* %11, %struct.clk_regmap** %6, align 8
  %12 = load %struct.clk_regmap*, %struct.clk_regmap** %6, align 8
  %13 = call %struct.clk_regmap_div_data* @clk_get_regmap_div_data(%struct.clk_regmap* %12)
  store %struct.clk_regmap_div_data* %13, %struct.clk_regmap_div_data** %7, align 8
  %14 = load %struct.clk_regmap*, %struct.clk_regmap** %6, align 8
  %15 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %7, align 8
  %18 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %16, i32 %19, i32* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %7, align 8
  %26 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = lshr i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %7, align 8
  %31 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_div_mask(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %7, align 8
  %40 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %7, align 8
  %43 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %7, align 8
  %46 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @divider_recalc_rate(%struct.clk_hw* %36, i64 %37, i32 %38, i32 %41, i32 %44, i32 %47)
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %24, %23
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.clk_regmap_div_data* @clk_get_regmap_div_data(%struct.clk_regmap*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i64 @divider_recalc_rate(%struct.clk_hw*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
