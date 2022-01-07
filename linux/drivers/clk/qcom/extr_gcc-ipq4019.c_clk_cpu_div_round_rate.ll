; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_cpu_div_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_cpu_div_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fepll = type { i32 }
%struct.freq_tbl = type { i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_cpu_div_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_cpu_div_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_fepll*, align 8
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca %struct.freq_tbl*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.clk_fepll* @to_clk_fepll(%struct.clk_hw* %11)
  store %struct.clk_fepll* %12, %struct.clk_fepll** %8, align 8
  %13 = load %struct.clk_fepll*, %struct.clk_fepll** %8, align 8
  %14 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.freq_tbl* @qcom_find_freq(i32 %15, i64 %16)
  store %struct.freq_tbl* %17, %struct.freq_tbl** %10, align 8
  %18 = load %struct.freq_tbl*, %struct.freq_tbl** %10, align 8
  %19 = icmp ne %struct.freq_tbl* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %25 = load %struct.freq_tbl*, %struct.freq_tbl** %10, align 8
  %26 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %24, i32 %27)
  store %struct.clk_hw* %28, %struct.clk_hw** %9, align 8
  %29 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %30 = call i64 @clk_hw_get_rate(%struct.clk_hw* %29)
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load %struct.freq_tbl*, %struct.freq_tbl** %10, align 8
  %33 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local %struct.clk_fepll* @to_clk_fepll(%struct.clk_hw*) #1

declare dso_local %struct.freq_tbl* @qcom_find_freq(i32, i64) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
