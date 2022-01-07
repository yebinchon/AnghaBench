; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_dfs_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_dfs_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg2 = type { i64, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SE_CMD_DFSR_OFFSET = common dso_local global i64 0, align 8
@CFG_MODE_MASK = common dso_local global i32 0, align 4
@CFG_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_rcg2_dfs_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_rcg2_dfs_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_rcg2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %14)
  store %struct.clk_rcg2* %15, %struct.clk_rcg2** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %17 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %21 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SE_CMD_DFSR_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @regmap_read(i32 %19, i64 %24, i32* %7)
  %26 = call i32 @GENMASK(i32 4, i32 1)
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %32 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %37 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %3, align 8
  br label %124

44:                                               ; preds = %2
  %45 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %46 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %50 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @SE_PERF_DFSR(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @regmap_read(i32 %48, i64 %54, i32* %9)
  %56 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %57 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @BIT(i32 %58)
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  store i32 1, i32* %13, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %44
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %65, %44
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @CFG_MODE_MASK, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @CFG_MODE_SHIFT, align 4
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %69
  %79 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %80 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %85 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %89 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i64 @SE_PERF_M_DFSR(i32 %91)
  %93 = add nsw i64 %90, %92
  %94 = call i32 @regmap_read(i32 %87, i64 %93, i32* %10)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %99 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %103 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @SE_PERF_N_DFSR(i32 %105)
  %107 = add nsw i64 %104, %106
  %108 = call i32 @regmap_read(i32 %101, i64 %107, i32* %11)
  %109 = load i32, i32* %11, align 4
  %110 = xor i32 %109, -1
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %78, %69
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i64 @calc_rate(i64 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  store i64 %123, i64* %3, align 8
  br label %124

124:                                              ; preds = %117, %35
  %125 = load i64, i64* %3, align 8
  ret i64 %125
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @SE_PERF_DFSR(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @SE_PERF_M_DFSR(i32) #1

declare dso_local i64 @SE_PERF_N_DFSR(i32) #1

declare dso_local i64 @calc_rate(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
