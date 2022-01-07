; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_noncore_dpll_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_noncore_dpll_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw_omap = type { %struct.dpll_data*, i32 }
%struct.dpll_data = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"clock: locking DPLL %s\0A\00", align 1
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@DPLL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*)* @_omap3_noncore_dpll_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap3_noncore_dpll_lock(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca %struct.clk_hw_omap*, align 8
  %3 = alloca %struct.dpll_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %2, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %8 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %7, i32 0, i32 1
  %9 = call i32 @clk_hw_get_name(i32* %8)
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %12 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %11, i32 0, i32 0
  %13 = load %struct.dpll_data*, %struct.dpll_data** %12, align 8
  store %struct.dpll_data* %13, %struct.dpll_data** %3, align 8
  %14 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %15 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__ffs(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %24 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %23, i32 0, i32 1
  %25 = call i32 %22(i32* %24)
  %26 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %27 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %53

33:                                               ; preds = %1
  %34 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %35 = call i32 @omap3_dpll_autoidle_read(%struct.clk_hw_omap* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %40 = call i32 @omap3_dpll_deny_idle(%struct.clk_hw_omap* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %43 = load i32, i32* @DPLL_LOCKED, align 4
  %44 = call i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap* %42, i32 %43)
  %45 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %46 = call i32 @_omap3_wait_dpll_status(%struct.clk_hw_omap* %45, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %51 = call i32 @omap3_dpll_allow_idle(%struct.clk_hw_omap* %50)
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @omap3_dpll_autoidle_read(%struct.clk_hw_omap*) #1

declare dso_local i32 @omap3_dpll_deny_idle(%struct.clk_hw_omap*) #1

declare dso_local i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @_omap3_wait_dpll_status(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @omap3_dpll_allow_idle(%struct.clk_hw_omap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
