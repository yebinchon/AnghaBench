; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_apll.c_omap2_apll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_apll.c_omap2_apll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@OMAP2_EN_APLL_LOCKED = common dso_local global i32 0, align 4
@MAX_APLL_WAIT_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s failed to transition to locked\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @omap2_apll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_apll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw_omap*, align 8
  %5 = alloca %struct.dpll_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %8)
  store %struct.clk_hw_omap* %9, %struct.clk_hw_omap** %4, align 8
  %10 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %11 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %10, i32 0, i32 1
  %12 = load %struct.dpll_data*, %struct.dpll_data** %11, align 8
  store %struct.dpll_data* %12, %struct.dpll_data** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %17 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %16, i32 0, i32 3
  %18 = call i32 %15(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %20 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @OMAP2_EN_APLL_LOCKED, align 4
  %26 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %27 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__ffs(i32 %28)
  %30 = shl i32 %25, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (i32, i32*)*, i32 (i32, i32*)** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %38 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %37, i32 0, i32 3
  %39 = call i32 %35(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %1, %59
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32*)*, i32 (i32*)** %42, align 8
  %44 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %45 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %44, i32 0, i32 2
  %46 = call i32 %43(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %49 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %63

54:                                               ; preds = %40
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MAX_APLL_WAIT_TRIES, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = call i32 @udelay(i32 1)
  br label %40

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MAX_APLL_WAIT_TRIES, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %69 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %68, i32 0, i32 0
  %70 = call i32 @clk_hw_get_name(i32* %69)
  %71 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
