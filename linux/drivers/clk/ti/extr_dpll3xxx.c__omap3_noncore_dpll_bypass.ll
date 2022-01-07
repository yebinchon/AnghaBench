; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_noncore_dpll_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_noncore_dpll_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DPLL_LOW_POWER_BYPASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"clock: configuring DPLL %s for low-power bypass\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*)* @_omap3_noncore_dpll_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap3_noncore_dpll_bypass(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %3, align 8
  %6 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %7 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DPLL_LOW_POWER_BYPASS, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %20 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %19, i32 0, i32 0
  %21 = call i32 @clk_hw_get_name(i32* %20)
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %24 = call i64 @omap3_dpll_autoidle_read(%struct.clk_hw_omap* %23)
  store i64 %24, i64* %5, align 8
  %25 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %26 = load i32, i32* @DPLL_LOW_POWER_BYPASS, align 4
  %27 = call i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap* %25, i32 %26)
  %28 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %29 = call i32 @_omap3_wait_dpll_status(%struct.clk_hw_omap* %28, i32 0)
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %34 = call i32 @omap3_dpll_allow_idle(%struct.clk_hw_omap* %33)
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

declare dso_local i64 @omap3_dpll_autoidle_read(%struct.clk_hw_omap*) #1

declare dso_local i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @_omap3_wait_dpll_status(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @omap3_dpll_allow_idle(%struct.clk_hw_omap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
