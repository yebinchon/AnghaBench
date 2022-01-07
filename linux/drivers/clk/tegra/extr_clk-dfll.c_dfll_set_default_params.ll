; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_set_default_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_set_default_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@DFLL_CONFIG_DIV_MASK = common dso_local global i32 0, align 4
@DFLL_CONFIG = common dso_local global i32 0, align 4
@DFLL_PARAMS_FORCE_MODE_SHIFT = common dso_local global i32 0, align 4
@DFLL_PARAMS_CF_PARAM_SHIFT = common dso_local global i32 0, align 4
@DFLL_PARAMS_CI_PARAM_SHIFT = common dso_local global i32 0, align 4
@DFLL_PARAMS_CG_PARAM_SHIFT = common dso_local global i32 0, align 4
@DFLL_PARAMS_CG_SCALE = common dso_local global i32 0, align 4
@DFLL_PARAMS = common dso_local global i32 0, align 4
@DFLL_DROOP_CTRL = common dso_local global i32 0, align 4
@DFLL_MONITOR_CTRL_FREQ = common dso_local global i32 0, align 4
@DFLL_MONITOR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dfll*)* @dfll_set_default_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfll_set_default_params(%struct.tegra_dfll* %0) #0 {
  %2 = alloca %struct.tegra_dfll*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %2, align 8
  %4 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %9, 32
  %11 = call i32 @DIV_ROUND_UP(i32 %6, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @DFLL_CONFIG_DIV_MASK, align 4
  %14 = icmp sgt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @DFLL_CONFIG, align 4
  %20 = call i32 @dfll_writel(%struct.tegra_dfll* %17, i32 %18, i32 %19)
  %21 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DFLL_PARAMS_FORCE_MODE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %27 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DFLL_PARAMS_CF_PARAM_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %25, %30
  %32 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %33 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DFLL_PARAMS_CI_PARAM_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %39 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DFLL_PARAMS_CG_PARAM_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %37, %42
  %44 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %45 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load i32, i32* @DFLL_PARAMS_CG_SCALE, align 4
  br label %51

50:                                               ; preds = %1
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %43, %52
  store i32 %53, i32* %3, align 4
  %54 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @DFLL_PARAMS, align 4
  %57 = call i32 @dfll_writel(%struct.tegra_dfll* %54, i32 %55, i32 %56)
  %58 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %59 = call i32 @dfll_tune_low(%struct.tegra_dfll* %58)
  %60 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %61 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %62 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DFLL_DROOP_CTRL, align 4
  %65 = call i32 @dfll_writel(%struct.tegra_dfll* %60, i32 %63, i32 %64)
  %66 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %67 = load i32, i32* @DFLL_MONITOR_CTRL_FREQ, align 4
  %68 = load i32, i32* @DFLL_MONITOR_CTRL, align 4
  %69 = call i32 @dfll_writel(%struct.tegra_dfll* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dfll_writel(%struct.tegra_dfll*, i32, i32) #1

declare dso_local i32 @dfll_tune_low(%struct.tegra_dfll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
