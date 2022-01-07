; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_init_pllu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_init_pllu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pll_u_vco_params = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@PLLU_BASE = common dso_local global i64 0, align 8
@PLLU_BASE_OVERRIDE = common dso_local global i32 0, align 4
@PLL_ENABLE = common dso_local global i32 0, align 4
@PLLU_HW_PWRDN_CFG0 = common dso_local global i64 0, align 8
@PLLU_HW_PWRDN_CFG0_IDDQ_PD_INCLUDE = common dso_local global i32 0, align 4
@PLLU_HW_PWRDN_CFG0_USE_SWITCH_DETECT = common dso_local global i32 0, align 4
@PLLU_HW_PWRDN_CFG0_USE_LOCKDET = common dso_local global i32 0, align 4
@PLLU_HW_PWRDN_CFG0_CLK_ENABLE_SWCTL = common dso_local global i32 0, align 4
@PLLU_HW_PWRDN_CFG0_CLK_SWITCH_SWCTL = common dso_local global i32 0, align 4
@XUSB_PLL_CFG0 = common dso_local global i64 0, align 8
@XUSB_PLL_CFG0_PLLU_LOCK_DLY_MASK = common dso_local global i32 0, align 4
@PLLU_HW_PWRDN_CFG0_SEQ_ENABLE = common dso_local global i32 0, align 4
@PLLU_BASE_CLKENABLE_USB = common dso_local global i32 0, align 4
@UTMIPLL_HW_PWRDN_CFG0 = common dso_local global i64 0, align 8
@UTMIPLL_HW_PWRDN_CFG0_SEQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tegra210_init_pllu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_init_pllu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @tegra210_pllu_set_defaults(i32* @pll_u_vco_params)
  %5 = load i64, i64* @clk_base, align 8
  %6 = load i64, i64* @PLLU_BASE, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl_relaxed(i64 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @PLLU_BASE_OVERRIDE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %102

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @PLL_ENABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @tegra210_enable_pllu()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %1, align 4
  br label %114

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i64, i64* @clk_base, align 8
  %28 = load i64, i64* @PLLU_BASE, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl_relaxed(i64 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* @PLLU_BASE_OVERRIDE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i64, i64* @clk_base, align 8
  %37 = load i64, i64* @PLLU_BASE, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %35, i64 %38)
  %40 = load i64, i64* @clk_base, align 8
  %41 = load i64, i64* @PLLU_HW_PWRDN_CFG0, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl_relaxed(i64 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* @PLLU_HW_PWRDN_CFG0_IDDQ_PD_INCLUDE, align 4
  %45 = load i32, i32* @PLLU_HW_PWRDN_CFG0_USE_SWITCH_DETECT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PLLU_HW_PWRDN_CFG0_USE_LOCKDET, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %2, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* @PLLU_HW_PWRDN_CFG0_CLK_ENABLE_SWCTL, align 4
  %52 = load i32, i32* @PLLU_HW_PWRDN_CFG0_CLK_SWITCH_SWCTL, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i64, i64* @clk_base, align 8
  %59 = load i64, i64* @PLLU_HW_PWRDN_CFG0, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel_relaxed(i32 %57, i64 %60)
  %62 = load i64, i64* @clk_base, align 8
  %63 = load i64, i64* @XUSB_PLL_CFG0, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl_relaxed(i64 %64)
  store i32 %65, i32* %2, align 4
  %66 = load i32, i32* @XUSB_PLL_CFG0_PLLU_LOCK_DLY_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %2, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i64, i64* @clk_base, align 8
  %72 = load i64, i64* @XUSB_PLL_CFG0, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel_relaxed(i32 %70, i64 %73)
  %75 = call i32 @udelay(i32 1)
  %76 = load i64, i64* @clk_base, align 8
  %77 = load i64, i64* @PLLU_HW_PWRDN_CFG0, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl_relaxed(i64 %78)
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* @PLLU_HW_PWRDN_CFG0_SEQ_ENABLE, align 4
  %81 = load i32, i32* %2, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* %2, align 4
  %84 = load i64, i64* @clk_base, align 8
  %85 = load i64, i64* @PLLU_HW_PWRDN_CFG0, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel_relaxed(i32 %83, i64 %86)
  %88 = call i32 @udelay(i32 1)
  %89 = load i64, i64* @clk_base, align 8
  %90 = load i64, i64* @PLLU_BASE, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readl_relaxed(i64 %91)
  store i32 %92, i32* %2, align 4
  %93 = load i32, i32* @PLLU_BASE_CLKENABLE_USB, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %2, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = load i64, i64* @clk_base, align 8
  %99 = load i64, i64* @PLLU_BASE, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel_relaxed(i32 %97, i64 %100)
  br label %102

102:                                              ; preds = %26, %0
  %103 = load i64, i64* @clk_base, align 8
  %104 = load i64, i64* @UTMIPLL_HW_PWRDN_CFG0, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @readl_relaxed(i64 %105)
  store i32 %106, i32* %2, align 4
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @UTMIPLL_HW_PWRDN_CFG0_SEQ_ENABLE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %102
  %112 = call i32 (...) @tegra210_utmi_param_configure()
  br label %113

113:                                              ; preds = %111, %102
  store i32 0, i32* %1, align 4
  br label %114

114:                                              ; preds = %113, %22
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i32 @tegra210_pllu_set_defaults(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @tegra210_enable_pllu(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tegra210_utmi_param_configure(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
