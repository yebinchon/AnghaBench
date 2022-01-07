; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpll_lpmode_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpll_lpmode_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpll_data = type { i32, i64, i32, i32 }

@OMAP4_DPLL_LP_FINT_MAX = common dso_local global i64 0, align 8
@OMAP4_DPLL_LP_FOUT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpll_data*)* @omap4_dpll_lpmode_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4_dpll_lpmode_recalc(%struct.dpll_data* %0) #0 {
  %2 = alloca %struct.dpll_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.dpll_data* %0, %struct.dpll_data** %2, align 8
  %5 = load %struct.dpll_data*, %struct.dpll_data** %2, align 8
  %6 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_hw_get_rate(i32 %7)
  %9 = load %struct.dpll_data*, %struct.dpll_data** %2, align 8
  %10 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = sdiv i32 %8, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.dpll_data*, %struct.dpll_data** %2, align 8
  %17 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = mul nsw i64 %15, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @OMAP4_DPLL_LP_FINT_MAX, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @OMAP4_DPLL_LP_FOUT_MAX, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.dpll_data*, %struct.dpll_data** %2, align 8
  %29 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  br label %33

30:                                               ; preds = %23, %1
  %31 = load %struct.dpll_data*, %struct.dpll_data** %2, align 8
  %32 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @clk_hw_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
