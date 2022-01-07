; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpll_regm4xen_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpll_regm4xen_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@OMAP4430_REGM4XEN_MULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap4_dpll_regm4xen_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_hw_omap*, align 8
  %9 = alloca %struct.dpll_data*, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %11)
  store %struct.clk_hw_omap* %12, %struct.clk_hw_omap** %8, align 8
  %13 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %8, align 8
  %14 = icmp ne %struct.clk_hw_omap* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %8, align 8
  %17 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %16, i32 0, i32 0
  %18 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %19 = icmp ne %struct.dpll_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %3
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %59

23:                                               ; preds = %15
  %24 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %8, align 8
  %25 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %24, i32 0, i32 0
  %26 = load %struct.dpll_data*, %struct.dpll_data** %25, align 8
  store %struct.dpll_data* %26, %struct.dpll_data** %9, align 8
  %27 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %28 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @omap2_dpll_round_rate(%struct.clk_hw* %29, i64 %30, i32* null)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %53

35:                                               ; preds = %23
  %36 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @OMAP4430_REGM4XEN_MULT, align 8
  %39 = udiv i64 %37, %38
  %40 = call i64 @omap2_dpll_round_rate(%struct.clk_hw* %36, i64 %39, i32* null)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %4, align 8
  br label %59

45:                                               ; preds = %35
  %46 = load i64, i64* @OMAP4430_REGM4XEN_MULT, align 8
  %47 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %48 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %52 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %45, %34
  %54 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %55 = call i32 @omap4_dpll_lpmode_recalc(%struct.dpll_data* %54)
  %56 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %57 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %53, %43, %20
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i64 @omap2_dpll_round_rate(%struct.clk_hw*, i64, i32*) #1

declare dso_local i32 @omap4_dpll_lpmode_recalc(%struct.dpll_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
