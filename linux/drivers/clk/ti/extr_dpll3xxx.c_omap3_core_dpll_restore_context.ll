; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_core_dpll_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_core_dpll_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32, i32, i32 }

@DPLL_LOCKED = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3_core_dpll_restore_context(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca %struct.dpll_data*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %6)
  store %struct.clk_hw_omap* %7, %struct.clk_hw_omap** %3, align 8
  %8 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %9 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %8, i32 0, i32 1
  %10 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  store %struct.dpll_data* %10, %struct.dpll_data** %4, align 8
  %11 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %12 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DPLL_LOCKED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %1
  %17 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %18 = call i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap* %17, i32 4)
  %19 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %20 = call i32 @_omap3_wait_dpll_status(%struct.clk_hw_omap* %19, i32 0)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32*)*, i32 (i32*)** %22, align 8
  %24 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %25 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %24, i32 0, i32 4
  %26 = call i32 %23(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %28 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %31 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %38 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %41 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__ffs(i32 %42)
  %44 = shl i32 %39, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %48 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %52 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__ffs(i32 %53)
  %55 = shl i32 %50, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (i32, i32*)*, i32 (i32, i32*)** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %63 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %62, i32 0, i32 4
  %64 = call i32 %60(i32 %61, i32* %63)
  %65 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %66 = load i32, i32* @DPLL_LOCKED, align 4
  %67 = call i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap* %65, i32 %66)
  %68 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %69 = call i32 @_omap3_wait_dpll_status(%struct.clk_hw_omap* %68, i32 1)
  br label %76

70:                                               ; preds = %1
  %71 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %72 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %73 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %16
  ret void
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @_omap3_dpll_write_clken(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @_omap3_wait_dpll_status(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
