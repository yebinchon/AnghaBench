; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpll_regm4xen_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpll_regm4xen_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DPLL_LOW_POWER_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4_dpll_regm4xen_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_hw_omap*, align 8
  %7 = alloca %struct.dpll_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %8)
  store %struct.clk_hw_omap* %9, %struct.clk_hw_omap** %6, align 8
  %10 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %11 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %6, align 8
  %19 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %18, i32 0, i32 0
  %20 = load %struct.dpll_data*, %struct.dpll_data** %19, align 8
  store %struct.dpll_data* %20, %struct.dpll_data** %7, align 8
  %21 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %22 = icmp ne %struct.dpll_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %70

26:                                               ; preds = %17
  %27 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %28 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @clk_hw_get_rate(i32 %29)
  %31 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %32 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %37 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DPLL_LOW_POWER_BYPASS, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %45 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %48 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %64

49:                                               ; preds = %35, %26
  %50 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %51 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %52 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %55 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %54, i32 0, i32 1
  %56 = call i64 @omap4_dpll_regm4xen_round_rate(%struct.clk_hw* %50, i64 %53, i64* %55)
  %57 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %58 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %60 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %63 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %49, %43
  %65 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %66 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %69 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %23, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(i32) #1

declare dso_local i64 @omap4_dpll_regm4xen_round_rate(%struct.clk_hw*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
