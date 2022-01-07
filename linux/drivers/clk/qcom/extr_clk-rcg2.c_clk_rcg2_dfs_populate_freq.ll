; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_dfs_populate_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_dfs_populate_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.freq_tbl = type { i32, i32, i32, i32, i32 }
%struct.clk_rcg2 = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CFG_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CFG_SRC_SEL_SHIFT = common dso_local global i32 0, align 4
@CFG_MODE_MASK = common dso_local global i32 0, align 4
@CFG_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*, i32, %struct.freq_tbl*)* @clk_rcg2_dfs_populate_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_rcg2_dfs_populate_freq(%struct.clk_hw* %0, i32 %1, %struct.freq_tbl* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.freq_tbl*, align 8
  %7 = alloca %struct.clk_rcg2*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.freq_tbl* %2, %struct.freq_tbl** %6, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %16)
  store %struct.clk_rcg2* %17, %struct.clk_rcg2** %7, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %19 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %23 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @SE_PERF_DFSR(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @regmap_read(i32 %21, i64 %27, i32* %12)
  %29 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %30 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BIT(i32 %31)
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %35 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %45 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %3
  %47 = load i32, i32* @CFG_SRC_SEL_MASK, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @CFG_SRC_SEL_SHIFT, align 4
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %54 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %53)
  store i32 %54, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %89, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %62 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %60, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %59
  %71 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %72 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %80 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %82 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %14, align 4
  %85 = call %struct.clk_hw* @clk_hw_get_parent_by_index(i32* %83, i32 %84)
  store %struct.clk_hw* %85, %struct.clk_hw** %8, align 8
  %86 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %87 = call i64 @clk_hw_get_rate(%struct.clk_hw* %86)
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %70, %59
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %55

92:                                               ; preds = %55
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @CFG_MODE_MASK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* @CFG_MODE_SHIFT, align 4
  %97 = load i32, i32* %13, align 4
  %98 = ashr i32 %97, %96
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %148

101:                                              ; preds = %92
  %102 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %103 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @BIT(i32 %104)
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %108 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %112 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i64 @SE_PERF_M_DFSR(i32 %114)
  %116 = add nsw i64 %113, %115
  %117 = call i32 @regmap_read(i32 %110, i64 %116, i32* %10)
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %123 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %125 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.clk_rcg2*, %struct.clk_rcg2** %7, align 8
  %129 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i64 @SE_PERF_N_DFSR(i32 %131)
  %133 = add nsw i64 %130, %132
  %134 = call i32 @regmap_read(i32 %127, i64 %133, i32* %10)
  %135 = load i32, i32* %10, align 4
  %136 = xor i32 %135, -1
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %141 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %147 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %101, %92
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %151 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %154 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %158 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @calc_rate(i64 %149, i32 %152, i32 %155, i32 %156, i32 %159)
  %161 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %162 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  ret void
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i64 @SE_PERF_DFSR(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(i32*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @SE_PERF_M_DFSR(i32) #1

declare dso_local i64 @SE_PERF_N_DFSR(i32) #1

declare dso_local i32 @calc_rate(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
