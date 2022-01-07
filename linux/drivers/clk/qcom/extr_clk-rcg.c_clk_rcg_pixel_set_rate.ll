; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_pixel_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_pixel_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frac_entry = type { i32, i64 }
%struct.clk_hw = type { i32 }
%struct.clk_rcg = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.freq_tbl = type { i32, i64, i64, i32, i32 }

@pixel_table = common dso_local global %struct.frac_entry* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_rcg_pixel_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg_pixel_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_rcg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.frac_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.freq_tbl, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw* %18)
  store %struct.clk_rcg* %19, %struct.clk_rcg** %8, align 8
  store i32 100000, i32* %9, align 4
  %20 = load %struct.frac_entry*, %struct.frac_entry** @pixel_table, align 8
  store %struct.frac_entry* %20, %struct.frac_entry** %10, align 8
  %21 = bitcast %struct.freq_tbl* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %23 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %22)
  store i32 %23, i32* %17, align 4
  %24 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %25 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %29 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @regmap_read(i32 %27, i32 %30, i64* %13)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %4, align 4
  br label %122

36:                                               ; preds = %3
  %37 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %38 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %37, i32 0, i32 0
  %39 = load i64, i64* %13, align 8
  %40 = call i64 @ns_to_src(%struct.TYPE_6__* %38, i64 %39)
  store i64 %40, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %69, %36
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %48 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %46, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %45
  %58 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %59 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %12, i32 0, i32 3
  store i32 %66, i32* %67, align 8
  br label %72

68:                                               ; preds = %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %41

72:                                               ; preds = %57, %41
  %73 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %12, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %116, %72
  %75 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %76 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %74
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %82 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 %80, %83
  %85 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %86 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %84, %88
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 %91, %93
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %79
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %98, %100
  %102 = icmp ugt i64 %97, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %79
  br label %116

104:                                              ; preds = %96
  %105 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %106 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %12, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  %110 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %111 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %12, i32 0, i32 2
  store i64 %112, i64* %113, align 8
  %114 = load %struct.clk_rcg*, %struct.clk_rcg** %8, align 8
  %115 = call i32 @__clk_rcg_set_rate(%struct.clk_rcg* %114, %struct.freq_tbl* %12)
  store i32 %115, i32* %4, align 4
  br label %122

116:                                              ; preds = %103
  %117 = load %struct.frac_entry*, %struct.frac_entry** %10, align 8
  %118 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %117, i32 1
  store %struct.frac_entry* %118, %struct.frac_entry** %10, align 8
  br label %74

119:                                              ; preds = %74
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %104, %34
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i64 @ns_to_src(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @__clk_rcg_set_rate(%struct.clk_rcg*, %struct.freq_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
