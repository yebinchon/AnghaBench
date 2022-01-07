; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_pixel_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_pixel_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frac_entry = type { i32, i64 }
%struct.clk_hw = type { i32 }
%struct.clk_rcg2 = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.freq_tbl = type { i32, i64, i64, i32, i32 }

@frac_table_pixel = common dso_local global %struct.frac_entry* null, align 8
@CFG_REG = common dso_local global i64 0, align 8
@CFG_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CFG_SRC_SEL_SHIFT = common dso_local global i32 0, align 4
@CFG_SRC_DIV_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pixel_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pixel_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_rcg2*, align 8
  %9 = alloca %struct.freq_tbl, align 8
  %10 = alloca %struct.frac_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %18)
  store %struct.clk_rcg2* %19, %struct.clk_rcg2** %8, align 8
  %20 = bitcast %struct.freq_tbl* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = load %struct.frac_entry*, %struct.frac_entry** @frac_table_pixel, align 8
  store %struct.frac_entry* %21, %struct.frac_entry** %10, align 8
  store i32 100000, i32* %12, align 4
  %22 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %23 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BIT(i32 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %28 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %30 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %34 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CFG_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @regmap_read(i32 %32, i64 %37, i32* %15)
  %39 = load i32, i32* @CFG_SRC_SEL_MASK, align 4
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @CFG_SRC_SEL_SHIFT, align 4
  %43 = load i32, i32* %15, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %71, %3
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %52 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %50, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %62 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 3
  store i32 %68, i32* %69, align 8
  br label %74

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %45

74:                                               ; preds = %60, %45
  br label %75

75:                                               ; preds = %137, %74
  %76 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %77 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %140

80:                                               ; preds = %75
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %83 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 %81, %84
  %86 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %87 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %85, %89
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %92, %94
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %80
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %99, %101
  %103 = icmp ugt i64 %98, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97, %80
  br label %137

105:                                              ; preds = %97
  %106 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %107 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %111 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CFG_REG, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @regmap_read(i32 %109, i64 %114, i32* %14)
  %116 = load i32, i32* %14, align 4
  %117 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* @CFG_SRC_DIV_SHIFT, align 4
  %119 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %120, %118
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* %13, align 4
  %123 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %122
  store i32 %125, i32* %123, align 8
  %126 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %127 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 1
  store i64 %129, i64* %130, align 8
  %131 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %132 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %9, i32 0, i32 2
  store i64 %133, i64* %134, align 8
  %135 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %136 = call i32 @clk_rcg2_configure(%struct.clk_rcg2* %135, %struct.freq_tbl* %9)
  store i32 %136, i32* %4, align 4
  br label %143

137:                                              ; preds = %104
  %138 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %139 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %138, i32 1
  store %struct.frac_entry* %139, %struct.frac_entry** %10, align 8
  br label %75

140:                                              ; preds = %75
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %140, %105
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @clk_rcg2_configure(%struct.clk_rcg2*, %struct.freq_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
