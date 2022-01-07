; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_edp_pixel_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_edp_pixel_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frac_entry = type { i32, i64 }
%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i32, i32 }
%struct.clk_rcg2 = type { i64, %struct.TYPE_2__, i32, i32, %struct.freq_tbl* }
%struct.TYPE_2__ = type { i32 }
%struct.freq_tbl = type { i32 }

@frac_table_810m = common dso_local global %struct.frac_entry* null, align 8
@frac_table_675m = common dso_local global %struct.frac_entry* null, align 8
@CFG_REG = common dso_local global i64 0, align 8
@CFG_SRC_DIV_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_edp_pixel_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_edp_pixel_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_rcg2*, align 8
  %7 = alloca %struct.freq_tbl*, align 8
  %8 = alloca %struct.frac_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %14)
  store %struct.clk_rcg2* %15, %struct.clk_rcg2** %6, align 8
  %16 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %17 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %16, i32 0, i32 4
  %18 = load %struct.freq_tbl*, %struct.freq_tbl** %17, align 8
  store %struct.freq_tbl* %18, %struct.freq_tbl** %7, align 8
  store i32 100000, i32* %9, align 4
  %19 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %20 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BIT(i32 %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  %24 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %25 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %26 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.freq_tbl*, %struct.freq_tbl** %7, align 8
  %29 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @qcom_find_src_index(%struct.clk_hw* %24, i32 %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @clk_hw_get_parent_by_index(%struct.clk_hw* %32, i32 %33)
  %35 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %36 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %38 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_hw_get_rate(i32 %39)
  %41 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %42 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %44 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 810000000
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load %struct.frac_entry*, %struct.frac_entry** @frac_table_810m, align 8
  store %struct.frac_entry* %48, %struct.frac_entry** %8, align 8
  br label %51

49:                                               ; preds = %2
  %50 = load %struct.frac_entry*, %struct.frac_entry** @frac_table_675m, align 8
  store %struct.frac_entry* %50, %struct.frac_entry** %8, align 8
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %124, %51
  %53 = load %struct.frac_entry*, %struct.frac_entry** %8, align 8
  %54 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %127

57:                                               ; preds = %52
  %58 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %59 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load %struct.frac_entry*, %struct.frac_entry** %8, align 8
  %62 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.frac_entry*, %struct.frac_entry** %8, align 8
  %68 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @div_s64(i32 %66, i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %72 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %74, %75
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %57
  %79 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %80 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %57
  br label %124

87:                                               ; preds = %78
  %88 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %89 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %93 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CFG_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @regmap_read(i32 %91, i64 %96, i32* %12)
  %98 = load i32, i32* @CFG_SRC_DIV_SHIFT, align 4
  %99 = load i32, i32* %12, align 4
  %100 = ashr i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %105 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.frac_entry*, %struct.frac_entry** %8, align 8
  %108 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.frac_entry*, %struct.frac_entry** %8, align 8
  %111 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.frac_entry*, %struct.frac_entry** %8, align 8
  %114 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @calc_rate(i32 %106, i64 %109, i32 %112, i32 %119, i32 %120)
  %122 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %123 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  store i32 0, i32* %3, align 4
  br label %130

124:                                              ; preds = %86
  %125 = load %struct.frac_entry*, %struct.frac_entry** %8, align 8
  %126 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %125, i32 1
  store %struct.frac_entry* %126, %struct.frac_entry** %8, align 8
  br label %52

127:                                              ; preds = %52
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %87
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qcom_find_src_index(%struct.clk_hw*, i32, i32) #1

declare dso_local i32 @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @clk_hw_get_rate(i32) #1

declare dso_local i32 @div_s64(i32, i64) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @calc_rate(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
