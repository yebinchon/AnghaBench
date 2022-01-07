; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_synth_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_synth_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.fapll_synth = type { i64, i64, i32 }

@SYNTH_PHASE_K = common dso_local global i32 0, align 4
@SYNTH_MAX_DIV_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ti_fapll_synth_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ti_fapll_synth_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fapll_synth*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.fapll_synth* @to_synth(%struct.clk_hw* %13)
  store %struct.fapll_synth* %14, %struct.fapll_synth** %6, align 8
  %15 = load %struct.fapll_synth*, %struct.fapll_synth** %6, align 8
  %16 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i64 32768, i64* %3, align 8
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.fapll_synth*, %struct.fapll_synth** %6, align 8
  %22 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @ti_fapll_clock_is_bypass(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %3, align 8
  br label %67

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.fapll_synth*, %struct.fapll_synth** %6, align 8
  %32 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load %struct.fapll_synth*, %struct.fapll_synth** %6, align 8
  %37 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @readl_relaxed(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 24
  %42 = and i32 %41, 15
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 16777215
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 10000000
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 10000000
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @do_div(i32 %51, i32 %52)
  %54 = load i32, i32* @SYNTH_PHASE_K, align 4
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %35, %28
  %58 = load %struct.fapll_synth*, %struct.fapll_synth** %6, align 8
  %59 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @readl_relaxed(i64 %60)
  %62 = load i32, i32* @SYNTH_MAX_DIV_M, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @DIV_ROUND_UP_ULL(i32 %64, i32 %65)
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %57, %26, %19
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local %struct.fapll_synth* @to_synth(%struct.clk_hw*) #1

declare dso_local i64 @ti_fapll_clock_is_bypass(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
