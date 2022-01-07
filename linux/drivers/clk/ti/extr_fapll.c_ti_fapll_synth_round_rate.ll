; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_synth_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_synth_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.fapll_synth = type { i32, i32, %struct.fapll_data* }
%struct.fapll_data = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@SYNTH_PHASE_K = common dso_local global i64 0, align 8
@SYNTH_MAX_INT_DIV = common dso_local global i32 0, align 4
@SYNTH_MAX_DIV_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @ti_fapll_synth_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ti_fapll_synth_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.fapll_synth*, align 8
  %9 = alloca %struct.fapll_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.fapll_synth* @to_synth(%struct.clk_hw* %13)
  store %struct.fapll_synth* %14, %struct.fapll_synth** %8, align 8
  %15 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %16 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %15, i32 0, i32 2
  %17 = load %struct.fapll_data*, %struct.fapll_data** %16, align 8
  store %struct.fapll_data* %17, %struct.fapll_data** %9, align 8
  %18 = load %struct.fapll_data*, %struct.fapll_data** %9, align 8
  %19 = call i64 @ti_fapll_clock_is_bypass(%struct.fapll_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %23 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %21, %3
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %71

32:                                               ; preds = %26
  %33 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %34 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ti_fapll_synth_get_frac_rate(%struct.clk_hw* %38, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @DIV_ROUND_UP(i64 %42, i64 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @DIV_ROUND_UP(i64 %45, i64 %46)
  store i64 %47, i64* %10, align 8
  br label %69

48:                                               ; preds = %32
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SYNTH_PHASE_K, align 8
  %52 = mul i64 %50, %51
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %69

57:                                               ; preds = %48
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @SYNTH_MAX_INT_DIV, align 4
  %60 = load i32, i32* @SYNTH_MAX_DIV_M, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i64 @DIV_ROUND_UP_ULL(i64 %58, i32 %61)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %69

67:                                               ; preds = %57
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %67, %66, %56, %37
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %69, %29
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local %struct.fapll_synth* @to_synth(%struct.clk_hw*) #1

declare dso_local i64 @ti_fapll_clock_is_bypass(%struct.fapll_data*) #1

declare dso_local i64 @ti_fapll_synth_get_frac_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
