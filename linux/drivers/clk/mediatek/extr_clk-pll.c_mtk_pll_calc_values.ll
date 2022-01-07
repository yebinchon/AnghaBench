; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c_mtk_pll_calc_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c_mtk_pll_calc_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, %struct.mtk_pll_div_table* }
%struct.mtk_pll_div_table = type { i64 }

@MHZ = common dso_local global i32 0, align 4
@INTEGER_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_clk_pll*, i64*, i64*, i64, i64)* @mtk_pll_calc_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_pll_calc_values(%struct.mtk_clk_pll* %0, i64* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mtk_clk_pll*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtk_pll_div_table*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.mtk_clk_pll* %0, %struct.mtk_clk_pll** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %6, align 8
  %24 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %32

28:                                               ; preds = %5
  %29 = load i32, i32* @MHZ, align 4
  %30 = mul nsw i32 1000, %29
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i64 [ %27, %22 ], [ %31, %28 ]
  store i64 %33, i64* %11, align 8
  %34 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load %struct.mtk_pll_div_table*, %struct.mtk_pll_div_table** %37, align 8
  store %struct.mtk_pll_div_table* %38, %struct.mtk_pll_div_table** %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %39, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %6, align 8
  %48 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %46, %32
  %53 = load %struct.mtk_pll_div_table*, %struct.mtk_pll_div_table** %12, align 8
  %54 = icmp ne %struct.mtk_pll_div_table* %53, null
  br i1 %54, label %55, label %96

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.mtk_pll_div_table*, %struct.mtk_pll_div_table** %12, align 8
  %58 = getelementptr inbounds %struct.mtk_pll_div_table, %struct.mtk_pll_div_table* %57, i64 0
  %59 = getelementptr inbounds %struct.mtk_pll_div_table, %struct.mtk_pll_div_table* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %56, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.mtk_pll_div_table*, %struct.mtk_pll_div_table** %12, align 8
  %64 = getelementptr inbounds %struct.mtk_pll_div_table, %struct.mtk_pll_div_table* %63, i64 0
  %65 = getelementptr inbounds %struct.mtk_pll_div_table, %struct.mtk_pll_div_table* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %62, %55
  store i64 0, i64* %15, align 8
  br label %68

68:                                               ; preds = %87, %67
  %69 = load %struct.mtk_pll_div_table*, %struct.mtk_pll_div_table** %12, align 8
  %70 = load i64, i64* %15, align 8
  %71 = add nsw i64 %70, 1
  %72 = getelementptr inbounds %struct.mtk_pll_div_table, %struct.mtk_pll_div_table* %69, i64 %71
  %73 = getelementptr inbounds %struct.mtk_pll_div_table, %struct.mtk_pll_div_table* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %68
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.mtk_pll_div_table*, %struct.mtk_pll_div_table** %12, align 8
  %79 = load i64, i64* %15, align 8
  %80 = add nsw i64 %79, 1
  %81 = getelementptr inbounds %struct.mtk_pll_div_table, %struct.mtk_pll_div_table* %78, i64 %80
  %82 = getelementptr inbounds %struct.mtk_pll_div_table, %struct.mtk_pll_div_table* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %77, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %90

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %15, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %15, align 8
  br label %68

90:                                               ; preds = %85, %68
  %91 = load i64, i64* %15, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 1, %92
  %94 = sext i32 %93 to i64
  %95 = load i64*, i64** %8, align 8
  store i64 %94, i64* %95, align 8
  br label %118

96:                                               ; preds = %52
  store i64 0, i64* %15, align 8
  br label %97

97:                                               ; preds = %114, %96
  %98 = load i64, i64* %15, align 8
  %99 = icmp slt i64 %98, 5
  br i1 %99, label %100, label %117

100:                                              ; preds = %97
  %101 = load i64, i64* %15, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 1, %102
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %8, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %107, align 8
  %109 = mul nsw i64 %106, %108
  %110 = load i64, i64* %11, align 8
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %117

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %15, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %15, align 8
  br label %97

117:                                              ; preds = %112, %97
  br label %118

118:                                              ; preds = %117, %90
  %119 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %6, align 8
  %120 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %6, align 8
  %127 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  br label %133

131:                                              ; preds = %118
  %132 = load i32, i32* @INTEGER_BITS, align 4
  br label %133

133:                                              ; preds = %131, %125
  %134 = phi i32 [ %130, %125 ], [ %132, %131 ]
  store i32 %134, i32* %14, align 4
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %15, align 8
  %137 = shl i64 %135, %136
  %138 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %6, align 8
  %139 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %14, align 4
  %144 = sub nsw i32 %142, %143
  %145 = zext i32 %144 to i64
  %146 = shl i64 %137, %145
  store i64 %146, i64* %13, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %10, align 8
  %149 = call i32 @do_div(i64 %147, i64 %148)
  %150 = load i64, i64* %13, align 8
  %151 = load i64*, i64** %7, align 8
  store i64 %150, i64* %151, align 8
  ret void
}

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
