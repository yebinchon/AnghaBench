; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg = type { i64, i64, %struct.TYPE_2__, %struct.mn, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mn = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_rcg_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_rcg_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_rcg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mn*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw* %13)
  store %struct.clk_rcg* %14, %struct.clk_rcg** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %16 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %15, i32 0, i32 3
  store %struct.mn* %16, %struct.mn** %12, align 8
  %17 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %18 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %22 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @regmap_read(i32 %20, i64 %23, i32* %9)
  %25 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %26 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %25, i32 0, i32 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ns_to_pre_div(i32* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %30 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.mn, %struct.mn* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %2
  %35 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %36 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %40 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @regmap_read(i32 %38, i64 %41, i32* %10)
  %43 = load %struct.mn*, %struct.mn** %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @md_to_m(%struct.mn* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mn*, %struct.mn** %12, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ns_m_to_n(%struct.mn* %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %51 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %55 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %34
  %59 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %60 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %64 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @regmap_read(i32 %62, i64 %66, i32* %11)
  br label %70

68:                                               ; preds = %34
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %58
  %71 = load %struct.mn*, %struct.mn** %12, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @reg_to_mnctr_mode(%struct.mn* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %2
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @calc_rate(i64 %75, i32 %76, i32 %77, i32 %78, i32 %79)
  ret i64 %80
}

declare dso_local %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @ns_to_pre_div(i32*, i32) #1

declare dso_local i32 @md_to_m(%struct.mn*, i32) #1

declare dso_local i32 @ns_m_to_n(%struct.mn*, i32, i32) #1

declare dso_local i32 @reg_to_mnctr_mode(%struct.mn*, i32) #1

declare dso_local i64 @calc_rate(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
