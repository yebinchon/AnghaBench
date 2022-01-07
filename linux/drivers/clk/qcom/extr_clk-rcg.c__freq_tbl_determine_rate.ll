; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c__freq_tbl_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c__freq_tbl_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.freq_tbl = type { i64, i64, i64, i32, i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.parent_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.freq_tbl*, %struct.clk_rate_request*, %struct.parent_map*)* @_freq_tbl_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_freq_tbl_determine_rate(%struct.clk_hw* %0, %struct.freq_tbl* %1, %struct.clk_rate_request* %2, %struct.parent_map* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.freq_tbl*, align 8
  %8 = alloca %struct.clk_rate_request*, align 8
  %9 = alloca %struct.parent_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.clk_hw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store %struct.freq_tbl* %1, %struct.freq_tbl** %7, align 8
  store %struct.clk_rate_request* %2, %struct.clk_rate_request** %8, align 8
  store %struct.parent_map* %3, %struct.parent_map** %9, align 8
  %15 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %16 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call %struct.freq_tbl* @qcom_find_freq(%struct.freq_tbl* %18, i64 %19)
  store %struct.freq_tbl* %20, %struct.freq_tbl** %7, align 8
  %21 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %22 = icmp ne %struct.freq_tbl* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %86

26:                                               ; preds = %4
  %27 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %28 = load %struct.parent_map*, %struct.parent_map** %9, align 8
  %29 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %30 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @qcom_find_src_index(%struct.clk_hw* %27, %struct.parent_map* %28, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %86

37:                                               ; preds = %26
  %38 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %39 = call i64 @clk_hw_get_flags(%struct.clk_hw* %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %40, i32 %41)
  store %struct.clk_hw* %42, %struct.clk_hw** %12, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @CLK_SET_RATE_PARENT, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %37
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %50 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %48, %51
  store i64 %52, i64* %11, align 8
  %53 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %54 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %61 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 %59, %62
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %66 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @do_div(i64 %64, i32 %67)
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %57, %47
  br label %74

71:                                               ; preds = %37
  %72 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %73 = call i64 @clk_hw_get_rate(%struct.clk_hw* %72)
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %71, %70
  %75 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %76 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %77 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %76, i32 0, i32 2
  store %struct.clk_hw* %75, %struct.clk_hw** %77, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %80 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %82 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %85 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %74, %35, %23
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.freq_tbl* @qcom_find_freq(%struct.freq_tbl*, i64) #1

declare dso_local i32 @qcom_find_src_index(%struct.clk_hw*, %struct.parent_map*, i32) #1

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
