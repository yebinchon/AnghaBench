; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_div_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_div_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.clk_regmap_div_data = type { i32, i32, i32, i32, i32 }

@CLK_DIVIDER_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_regmap_div_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_regmap_div_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_regmap*, align 8
  %9 = alloca %struct.clk_regmap_div_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %12)
  store %struct.clk_regmap* %13, %struct.clk_regmap** %8, align 8
  %14 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %15 = call %struct.clk_regmap_div_data* @clk_get_regmap_div_data(%struct.clk_regmap* %14)
  store %struct.clk_regmap_div_data* %15, %struct.clk_regmap_div_data** %9, align 8
  %16 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %17 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CLK_DIVIDER_READ_ONLY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %3
  %23 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %24 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %27 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_read(i32 %25, i32 %28, i32* %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i64 0, i64* %4, align 8
  br label %73

33:                                               ; preds = %22
  %34 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %35 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = lshr i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %40 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_div_mask(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %49 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %52 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %55 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @divider_ro_round_rate(%struct.clk_hw* %45, i64 %46, i64* %47, i32 %50, i32 %53, i32 %56, i32 %57)
  store i64 %58, i64* %4, align 8
  br label %73

59:                                               ; preds = %3
  %60 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %64 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %67 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.clk_regmap_div_data*, %struct.clk_regmap_div_data** %9, align 8
  %70 = getelementptr inbounds %struct.clk_regmap_div_data, %struct.clk_regmap_div_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @divider_round_rate(%struct.clk_hw* %60, i64 %61, i64* %62, i32 %65, i32 %68, i32 %71)
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %59, %33, %32
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.clk_regmap_div_data* @clk_get_regmap_div_data(%struct.clk_regmap*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i64 @divider_ro_round_rate(%struct.clk_hw*, i64, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @divider_round_rate(%struct.clk_hw*, i64, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
