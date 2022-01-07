; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_pllu_check_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_pllu_check_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll_params = type { i32 }

@PLLU_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLU_MISC0_IDDQ = common dso_local global i32 0, align 4
@PLLU_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@clk_base = common dso_local global i32 0, align 4
@PLLU_MISC0_WRITE_MASK = common dso_local global i32 0, align 4
@PLLU_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLU_MISC1_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLU_MISC1_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll_params*, i32)* @pllu_check_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pllu_check_defaults(%struct.tegra_clk_pll_params* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_clk_pll_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_clk_pll_params* %0, %struct.tegra_clk_pll_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @PLLU_MISC0_DEFAULT_VALUE, align 4
  %8 = load i32, i32* @PLLU_MISC0_IDDQ, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @PLLU_MISC0_LOCK_ENABLE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PLLU_MISC0_IDDQ, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = or i32 %11, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @clk_base, align 4
  %21 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @PLLU_MISC0_WRITE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @_pll_misc_chk_default(i32 %20, %struct.tegra_clk_pll_params* %21, i32 0, i32 %22, i32 %26)
  %28 = load i32, i32* @PLLU_MISC1_DEFAULT_VALUE, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @PLLU_MISC1_LOCK_OVERRIDE, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @clk_base, align 4
  %31 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @PLLU_MISC1_WRITE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @_pll_misc_chk_default(i32 %30, %struct.tegra_clk_pll_params* %31, i32 1, i32 %32, i32 %36)
  ret void
}

declare dso_local i32 @_pll_misc_chk_default(i32, %struct.tegra_clk_pll_params*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
