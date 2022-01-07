; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_edp_pixel_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_edp_pixel_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frac_entry = type { i32, i64 }
%struct.clk_hw = type { i32 }
%struct.clk_rcg2 = type { i64, %struct.TYPE_2__, i32, %struct.freq_tbl* }
%struct.TYPE_2__ = type { i32 }
%struct.freq_tbl = type { i32, i32, i64 }

@frac_table_810m = common dso_local global %struct.frac_entry* null, align 8
@frac_table_675m = common dso_local global %struct.frac_entry* null, align 8
@CFG_REG = common dso_local global i64 0, align 8
@CFG_SRC_DIV_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_edp_pixel_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_edp_pixel_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_rcg2*, align 8
  %9 = alloca %struct.freq_tbl, align 8
  %10 = alloca %struct.frac_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %16)
  store %struct.clk_rcg2* %17, %struct.clk_rcg2** %8, align 8
  %18 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %19 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %18, i32 0, i32 3
  %20 = load %struct.freq_tbl*, %struct.freq_tbl** %19, align 8
  %21 = bitcast %struct.freq_tbl* %9 to i8*
  %22 = bitcast %struct.freq_tbl* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  store i32 100000, i32* %11, align 4
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %26 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 810000000
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load %struct.frac_entry*, %struct.frac_entry** @frac_table_810m, align 8
  store %struct.frac_entry* %33, %struct.frac_entry** %10, align 8
  br label %36

34:                                               ; preds = %3
  %35 = load %struct.frac_entry*, %struct.frac_entry** @frac_table_675m, align 8
  store %struct.frac_entry* %35, %struct.frac_entry** %10, align 8
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %98, %36
  %38 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %39 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %101

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %46 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = mul nsw i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %52 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @div_s64(i32 %50, i64 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %42
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %42
  br label %98

67:                                               ; preds = %60
  %68 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %69 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %73 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CFG_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @regmap_read(i32 %71, i64 %76, i32* %15)
  %78 = load i32, i32* %15, align 4
  %79 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* @CFG_SRC_DIV_SHIFT, align 4
  %81 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %82, %80
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %14, align 4
  %85 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %84
  store i32 %87, i32* %85, align 8
  %88 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %89 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  %92 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %93 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %97 = call i32 @clk_rcg2_configure(%struct.clk_rcg2* %96, %struct.freq_tbl* %9)
  store i32 %97, i32* %4, align 4
  br label %104

98:                                               ; preds = %66
  %99 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %100 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %99, i32 1
  store %struct.frac_entry* %100, %struct.frac_entry** %10, align 8
  br label %37

101:                                              ; preds = %37
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %67
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @div_s64(i32, i64) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @clk_rcg2_configure(%struct.clk_rcg2*, %struct.freq_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
