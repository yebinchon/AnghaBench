; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_dpll4_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_dpll4_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TI_CLK_DPLL4_DENY_REPROGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"clock: DPLL4 cannot change rate due to silicon 'Limitation 2.5' on 3430ES1.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3_dpll4_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = call %struct.TYPE_2__* (...) @ti_clk_get_features()
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TI_CLK_DPLL4_DENY_REPROGRAM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @omap3_noncore_dpll_set_rate(%struct.clk_hw* %19, i64 %20, i64 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.TYPE_2__* @ti_clk_get_features(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @omap3_noncore_dpll_set_rate(%struct.clk_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
