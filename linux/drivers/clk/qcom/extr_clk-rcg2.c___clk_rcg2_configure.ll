; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c___clk_rcg2_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c___clk_rcg2_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rcg2 = type { %struct.TYPE_3__, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i32, %struct.clk_hw }
%struct.clk_hw = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.freq_tbl = type { i32, i32, i32, i32 }

@CFG_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CFG_MODE_MASK = common dso_local global i32 0, align 4
@CFG_HW_CLK_CTRL_MASK = common dso_local global i32 0, align 4
@CFG_SRC_DIV_SHIFT = common dso_local global i32 0, align 4
@CFG_SRC_SEL_SHIFT = common dso_local global i32 0, align 4
@CFG_MODE_DUAL_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rcg2*, %struct.freq_tbl*)* @__clk_rcg2_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_rcg2_configure(%struct.clk_rcg2* %0, %struct.freq_tbl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_rcg2*, align 8
  %5 = alloca %struct.freq_tbl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_rcg2* %0, %struct.clk_rcg2** %4, align 8
  store %struct.freq_tbl* %1, %struct.freq_tbl** %5, align 8
  %11 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %12 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store %struct.clk_hw* %13, %struct.clk_hw** %8, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %15 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %16 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %19 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @qcom_find_src_index(%struct.clk_hw* %14, %struct.TYPE_4__* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %157

26:                                               ; preds = %2
  %27 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %28 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %26
  %32 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %33 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %31
  %37 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %38 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @BIT(i64 %39)
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %43 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %47 = call i32 @RCG_M_OFFSET(%struct.clk_rcg2* %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %50 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regmap_update_bits(i32 %45, i32 %47, i32 %48, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %36
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %157

57:                                               ; preds = %36
  %58 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %59 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %63 = call i32 @RCG_N_OFFSET(%struct.clk_rcg2* %62)
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %66 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %69 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = xor i32 %71, -1
  %73 = call i32 @regmap_update_bits(i32 %61, i32 %63, i32 %64, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %57
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %157

78:                                               ; preds = %57
  %79 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %80 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %84 = call i32 @RCG_D_OFFSET(%struct.clk_rcg2* %83)
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %87 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, -1
  %90 = call i32 @regmap_update_bits(i32 %82, i32 %84, i32 %85, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %157

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %31, %26
  %97 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %98 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @BIT(i64 %99)
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @CFG_SRC_SEL_MASK, align 4
  %103 = load i32, i32* @CFG_MODE_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @CFG_HW_CLK_CTRL_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %110 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CFG_SRC_DIV_SHIFT, align 4
  %113 = shl i32 %111, %112
  store i32 %113, i32* %6, align 4
  %114 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %115 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CFG_SRC_SEL_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %127 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %96
  %131 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %132 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %137 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %140 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load i32, i32* @CFG_MODE_DUAL_EDGE, align 4
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %143, %135, %130, %96
  %148 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %149 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %153 = call i32 @RCG_CFG_OFFSET(%struct.clk_rcg2* %152)
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @regmap_update_bits(i32 %151, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %147, %93, %76, %55, %24
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @qcom_find_src_index(%struct.clk_hw*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @RCG_M_OFFSET(%struct.clk_rcg2*) #1

declare dso_local i32 @RCG_N_OFFSET(%struct.clk_rcg2*) #1

declare dso_local i32 @RCG_D_OFFSET(%struct.clk_rcg2*) #1

declare dso_local i32 @RCG_CFG_OFFSET(%struct.clk_rcg2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
