; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c__freq_tbl_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c__freq_tbl_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.freq_tbl = type { i64, i32, i64, i32, i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.clk_rcg2 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.freq_tbl*, %struct.clk_rate_request*, i32)* @_freq_tbl_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_freq_tbl_determine_rate(%struct.clk_hw* %0, %struct.freq_tbl* %1, %struct.clk_rate_request* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.freq_tbl*, align 8
  %8 = alloca %struct.clk_rate_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.clk_hw*, align 8
  %13 = alloca %struct.clk_rcg2*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store %struct.freq_tbl* %1, %struct.freq_tbl** %7, align 8
  store %struct.clk_rate_request* %2, %struct.clk_rate_request** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %17 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %20 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %19)
  store %struct.clk_rcg2* %20, %struct.clk_rcg2** %13, align 8
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %30 [
    i32 128, label %22
    i32 129, label %26
  ]

22:                                               ; preds = %4
  %23 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.freq_tbl* @qcom_find_freq_floor(%struct.freq_tbl* %23, i64 %24)
  store %struct.freq_tbl* %25, %struct.freq_tbl** %7, align 8
  br label %33

26:                                               ; preds = %4
  %27 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call %struct.freq_tbl* @qcom_find_freq(%struct.freq_tbl* %27, i64 %28)
  store %struct.freq_tbl* %29, %struct.freq_tbl** %7, align 8
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %114

33:                                               ; preds = %26, %22
  %34 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %35 = icmp ne %struct.freq_tbl* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %114

39:                                               ; preds = %33
  %40 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %41 = load %struct.clk_rcg2*, %struct.clk_rcg2** %13, align 8
  %42 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %45 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @qcom_find_src_index(%struct.clk_hw* %40, i32 %43, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %114

52:                                               ; preds = %39
  %53 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %54 = call i64 @clk_hw_get_flags(%struct.clk_hw* %53)
  store i64 %54, i64* %10, align 8
  %55 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %55, i32 %56)
  store %struct.clk_hw* %57, %struct.clk_hw** %12, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @CLK_SET_RATE_PARENT, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %52
  %63 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %64 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %11, align 8
  %66 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %67 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i64, i64* %11, align 8
  %72 = udiv i64 %71, 2
  store i64 %72, i64* %11, align 8
  %73 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %74 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %11, align 8
  %79 = mul i64 %78, %77
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %70, %62
  %81 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %82 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i64, i64* %11, align 8
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %89 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = mul i64 %87, %90
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %94 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @do_div(i64 %92, i32 %95)
  %97 = load i64, i64* %15, align 8
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %85, %80
  br label %102

99:                                               ; preds = %52
  %100 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %101 = call i64 @clk_hw_get_rate(%struct.clk_hw* %100)
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %99, %98
  %103 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %104 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %105 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %104, i32 0, i32 2
  store %struct.clk_hw* %103, %struct.clk_hw** %105, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %108 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %110 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %113 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %102, %50, %36, %30
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local %struct.freq_tbl* @qcom_find_freq_floor(%struct.freq_tbl*, i64) #1

declare dso_local %struct.freq_tbl* @qcom_find_freq(%struct.freq_tbl*, i64) #1

declare dso_local i32 @qcom_find_src_index(%struct.clk_hw*, i32, i32) #1

declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
