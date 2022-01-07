; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c___clk_rcg2_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c___clk_rcg2_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg2 = type { i32 }
%struct.freq_tbl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i32)* @__clk_rcg2_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_rcg2_set_rate(%struct.clk_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_rcg2*, align 8
  %9 = alloca %struct.freq_tbl*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %10)
  store %struct.clk_rcg2* %11, %struct.clk_rcg2** %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %25 [
    i32 128, label %13
    i32 129, label %19
  ]

13:                                               ; preds = %3
  %14 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %15 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.freq_tbl* @qcom_find_freq_floor(i32 %16, i64 %17)
  store %struct.freq_tbl* %18, %struct.freq_tbl** %9, align 8
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %21 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.freq_tbl* @qcom_find_freq(i32 %22, i64 %23)
  store %struct.freq_tbl* %24, %struct.freq_tbl** %9, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %19, %13
  %29 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %30 = icmp ne %struct.freq_tbl* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %28
  %35 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %36 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %37 = call i32 @clk_rcg2_configure(%struct.clk_rcg2* %35, %struct.freq_tbl* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %31, %25
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local %struct.freq_tbl* @qcom_find_freq_floor(i32, i64) #1

declare dso_local %struct.freq_tbl* @qcom_find_freq(i32, i64) #1

declare dso_local i32 @clk_rcg2_configure(%struct.clk_rcg2*, %struct.freq_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
