; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_wait_dpll_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_wait_dpll_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw_omap = type { i32, %struct.dpll_data* }
%struct.dpll_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_DPLL_WAIT_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"clock: %s failed transition to '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bypassed\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"clock: %s transition to '%s' in %d loops\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*, i32)* @_omap3_wait_dpll_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap3_wait_dpll_status(%struct.clk_hw_omap* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpll_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %12 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %11, i32 0, i32 1
  %13 = load %struct.dpll_data*, %struct.dpll_data** %12, align 8
  store %struct.dpll_data* %13, %struct.dpll_data** %5, align 8
  %14 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %15 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %14, i32 0, i32 0
  %16 = call i8* @clk_hw_get_name(i32* %15)
  store i8* %16, i8** %8, align 8
  %17 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %18 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__ffs(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %42, %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32*)*, i32 (i32*)** %25, align 8
  %27 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %28 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %27, i32 0, i32 1
  %29 = call i32 %26(i32* %28)
  %30 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %31 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MAX_DPLL_WAIT_TRIES, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %23
  %41 = phi i1 [ false, %23 ], [ %39, %36 ]
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = call i32 @udelay(i32 1)
  br label %23

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MAX_DPLL_WAIT_TRIES, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %55)
  br label %65

57:                                               ; preds = %46
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %58, i8* %62, i32 %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %57, %50
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i8* @clk_hw_get_name(i32*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
