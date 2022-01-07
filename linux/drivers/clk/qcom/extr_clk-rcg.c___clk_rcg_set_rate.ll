; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c___clk_rcg_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c___clk_rcg_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rcg = type { i32, i32, %struct.TYPE_2__, i32, %struct.mn }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mn = type { i32, i64, i64 }
%struct.freq_tbl = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rcg*, %struct.freq_tbl*)* @__clk_rcg_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_rcg_set_rate(%struct.clk_rcg* %0, %struct.freq_tbl* %1) #0 {
  %3 = alloca %struct.clk_rcg*, align 8
  %4 = alloca %struct.freq_tbl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_rcg* %0, %struct.clk_rcg** %3, align 8
  store %struct.freq_tbl* %1, %struct.freq_tbl** %4, align 8
  %11 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %12 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %11, i32 0, i32 4
  store %struct.mn* %12, %struct.mn** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %14 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.mn, %struct.mn* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %20 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %25 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %29 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.mn, %struct.mn* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %137

33:                                               ; preds = %27
  %34 = load %struct.mn*, %struct.mn** %8, align 8
  %35 = getelementptr inbounds %struct.mn, %struct.mn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @BIT(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %39 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %47 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %51 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @regmap_read(i32 %49, i32 %52, i32* %6)
  %54 = load %struct.mn*, %struct.mn** %8, align 8
  %55 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %56 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %59 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @mn_to_md(%struct.mn* %54, i32 %57, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %64 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %68 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @regmap_write(i32 %66, i32 %69, i32 %70)
  %72 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %73 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %77 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @regmap_read(i32 %75, i32 %78, i32* %5)
  %80 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %81 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %85 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %33
  %89 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %90 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %94 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @regmap_read(i32 %92, i32 %96, i32* %7)
  %98 = load %struct.mn*, %struct.mn** %8, align 8
  %99 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %100 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %103 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @mn_to_reg(%struct.mn* %98, i32 %101, i32 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %108 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %112 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @regmap_write(i32 %110, i32 %114, i32 %115)
  br label %127

117:                                              ; preds = %33
  %118 = load %struct.mn*, %struct.mn** %8, align 8
  %119 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %120 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %123 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @mn_to_reg(%struct.mn* %118, i32 %121, i32 %124, i32 %125)
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %117, %88
  %128 = load %struct.mn*, %struct.mn** %8, align 8
  %129 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %130 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %133 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @mn_to_ns(%struct.mn* %128, i32 %131, i32 %134, i32 %135)
  store i32 %136, i32* %5, align 4
  br label %146

137:                                              ; preds = %27
  %138 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %139 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %143 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @regmap_read(i32 %141, i32 %144, i32* %5)
  br label %146

146:                                              ; preds = %137, %127
  %147 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %148 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %147, i32 0, i32 3
  %149 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %150 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, 1
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @pre_div_to_ns(i32* %148, i64 %152, i32 %153)
  store i32 %154, i32* %5, align 4
  %155 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %156 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %160 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @regmap_write(i32 %158, i32 %161, i32 %162)
  %164 = load %struct.clk_rcg*, %struct.clk_rcg** %3, align 8
  %165 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @regmap_update_bits(i32 %167, i32 %168, i32 %169, i32 0)
  ret i32 0
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mn_to_md(%struct.mn*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mn_to_reg(%struct.mn*, i32, i32, i32) #1

declare dso_local i32 @mn_to_ns(%struct.mn*, i32, i32, i32) #1

declare dso_local i32 @pre_div_to_ns(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
