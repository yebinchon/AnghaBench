; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_lcc_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_lcc_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.freq_tbl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_rcg_lcc_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg_lcc_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_rcg*, align 8
  %9 = alloca %struct.freq_tbl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw* %12)
  store %struct.clk_rcg* %13, %struct.clk_rcg** %8, align 8
  %14 = call i32 @BIT(i32 10)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %16 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.freq_tbl* @qcom_find_freq(i32 %17, i64 %18)
  store %struct.freq_tbl* %19, %struct.freq_tbl** %9, align 8
  %20 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %21 = icmp ne %struct.freq_tbl* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %27 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %31 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @regmap_update_bits(i32 %29, i32 %32, i32 %33, i32 0)
  %35 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %36 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %37 = call i32 @__clk_rcg_set_rate(%struct.clk_rcg* %35, %struct.freq_tbl* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %39 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @__clk_is_enabled(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %25
  %44 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %45 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %49 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @regmap_update_bits(i32 %47, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %25
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.freq_tbl* @qcom_find_freq(i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @__clk_rcg_set_rate(%struct.clk_rcg*, %struct.freq_tbl*) #1

declare dso_local i64 @__clk_is_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
