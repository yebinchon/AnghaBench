; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm2xxx.c_omap2xxx_cm_set_mod_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm2xxx.c_omap2xxx_cm_set_mod_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPU_MOD = common dso_local global i32 0, align 4
@CM_CLKSEL = common dso_local global i32 0, align 4
@OMAP24XX_DSP_MOD = common dso_local global i32 0, align 4
@GFX_MOD = common dso_local global i32 0, align 4
@CORE_MOD = common dso_local global i32 0, align 4
@CM_CLKSEL1 = common dso_local global i32 0, align 4
@OMAP24XX_CLKSEL_DSS2_MASK = common dso_local global i32 0, align 4
@OMAP2430_MDM_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2xxx_cm_set_mod_dividers(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MPU_MOD, align 4
  %14 = load i32, i32* @CM_CLKSEL, align 4
  %15 = call i32 @omap2_cm_write_mod_reg(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @OMAP24XX_DSP_MOD, align 4
  %18 = load i32, i32* @CM_CLKSEL, align 4
  %19 = call i32 @omap2_cm_write_mod_reg(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GFX_MOD, align 4
  %22 = load i32, i32* @CM_CLKSEL, align 4
  %23 = call i32 @omap2_cm_write_mod_reg(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @CORE_MOD, align 4
  %25 = load i32, i32* @CM_CLKSEL1, align 4
  %26 = call i32 @omap2_cm_read_mod_reg(i32 %24, i32 %25)
  %27 = load i32, i32* @OMAP24XX_CLKSEL_DSS2_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CORE_MOD, align 4
  %33 = load i32, i32* @CM_CLKSEL1, align 4
  %34 = call i32 @omap2_cm_write_mod_reg(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @OMAP2430_MDM_MOD, align 4
  %40 = load i32, i32* @CM_CLKSEL, align 4
  %41 = call i32 @omap2_cm_write_mod_reg(i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32 @omap2_cm_write_mod_reg(i32, i32, i32) #1

declare dso_local i32 @omap2_cm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
