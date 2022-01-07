; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_dyn_rcg_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_dyn_rcg_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_dyn_rcg = type { i64, i64*, i64*, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.mn* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_dyn_rcg_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_dyn_rcg_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_dyn_rcg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %18 = call %struct.clk_dyn_rcg* @to_clk_dyn_rcg(%struct.clk_hw* %17)
  store %struct.clk_dyn_rcg* %18, %struct.clk_dyn_rcg** %5, align 8
  %19 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %20 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %30 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %29, i32 0, i32 5
  %31 = load %struct.mn*, %struct.mn** %30, align 8
  %32 = getelementptr inbounds %struct.mn, %struct.mn* %31, i64 1
  %33 = getelementptr inbounds %struct.mn, %struct.mn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %16, align 4
  %39 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %40 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %44 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @regmap_read(i32 %42, i64 %45, i64* %12)
  %47 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @reg_to_bank(%struct.clk_dyn_rcg* %47, i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %51 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %55 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @regmap_read(i32 %53, i64 %60, i64* %9)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %2
  %65 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %66 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %65, i32 0, i32 5
  %67 = load %struct.mn*, %struct.mn** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mn, %struct.mn* %67, i64 %69
  store %struct.mn* %70, %struct.mn** %14, align 8
  %71 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %72 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %76 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @regmap_read(i32 %74, i64 %81, i64* %10)
  %83 = load %struct.mn*, %struct.mn** %14, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @md_to_m(%struct.mn* %83, i64 %84)
  store i64 %85, i64* %6, align 8
  %86 = load %struct.mn*, %struct.mn** %14, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @ns_m_to_n(%struct.mn* %86, i64 %87, i64 %88)
  store i64 %89, i64* %7, align 8
  %90 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %91 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %96 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %94, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %64
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %101, %64
  %104 = load %struct.mn*, %struct.mn** %14, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @reg_to_mnctr_mode(%struct.mn* %104, i64 %105)
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %103, %2
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %112 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @ns_to_pre_div(%struct.TYPE_4__* %116, i64 %117)
  store i64 %118, i64* %8, align 8
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @calc_rate(i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  ret i64 %125
}

declare dso_local %struct.clk_dyn_rcg* @to_clk_dyn_rcg(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

declare dso_local i32 @reg_to_bank(%struct.clk_dyn_rcg*, i64) #1

declare dso_local i64 @md_to_m(%struct.mn*, i64) #1

declare dso_local i64 @ns_m_to_n(%struct.mn*, i64, i64) #1

declare dso_local i64 @reg_to_mnctr_mode(%struct.mn*, i64) #1

declare dso_local i64 @ns_to_pre_div(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @calc_rate(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
