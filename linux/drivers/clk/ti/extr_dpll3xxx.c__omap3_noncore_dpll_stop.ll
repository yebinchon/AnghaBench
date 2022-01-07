; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_noncore_dpll_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_noncore_dpll_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DPLL_LOW_POWER_STOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"clock: stopping DPLL %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*)* @_omap3_noncore_dpll_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap3_noncore_dpll_stop(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %3, align 8
  %5 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %6 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DPLL_LOW_POWER_STOP, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %19 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %18, i32 0, i32 0
  %20 = call i32 @clk_hw_get_name(i32* %19)
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %23 = call i64 @omap3_dpll_autoidle_read(%struct.clk_hw_omap* %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %25 = load i32, i32* @DPLL_LOW_POWER_STOP, align 4
  %26 = call i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap* %24, i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %31 = call i32 @omap3_dpll_allow_idle(%struct.clk_hw_omap* %30)
  br label %32

32:                                               ; preds = %29, %17
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

declare dso_local i64 @omap3_dpll_autoidle_read(%struct.clk_hw_omap*) #1

declare dso_local i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @omap3_dpll_allow_idle(%struct.clk_hw_omap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
