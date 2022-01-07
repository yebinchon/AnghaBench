; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_noncore_dpll_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_noncore_dpll_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32, i32, i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@DPLL_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3_noncore_dpll_restore_context(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca %struct.dpll_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %7)
  store %struct.clk_hw_omap* %8, %struct.clk_hw_omap** %3, align 8
  %9 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %10 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %9, i32 0, i32 1
  %11 = load %struct.dpll_data*, %struct.dpll_data** %10, align 8
  store %struct.dpll_data* %11, %struct.dpll_data** %4, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %16 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %15, i32 0, i32 6
  %17 = call i32 %14(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %22 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %21, i32 0, i32 5
  %23 = call i32 %20(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %25 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %29 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %33 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__ffs(i32 %34)
  %36 = ashr i32 %31, %35
  %37 = icmp eq i32 %26, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %1
  %39 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %40 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %44 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %48 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__ffs(i32 %49)
  %51 = ashr i32 %46, %50
  %52 = icmp eq i32 %41, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %38
  %54 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %55 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %59 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  %62 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %63 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__ffs(i32 %64)
  %66 = ashr i32 %61, %65
  %67 = add nsw i32 %66, 1
  %68 = icmp eq i32 %56, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %85

70:                                               ; preds = %53, %38, %1
  %71 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %72 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DPLL_LOCKED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %78 = call i32 @omap3_noncore_dpll_program(%struct.clk_hw_omap* %77, i32 0)
  br label %85

79:                                               ; preds = %70
  %80 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %81 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %82 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap* %80, i32 %83)
  br label %85

85:                                               ; preds = %69, %79, %76
  ret void
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @omap3_noncore_dpll_program(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
