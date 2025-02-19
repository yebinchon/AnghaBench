; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm2xxx.c__omap2xxx_apll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm2xxx.c__omap2xxx_apll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLL_MOD = common dso_local global i32 0, align 4
@CM_CLKEN = common dso_local global i32 0, align 4
@EN_APLL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_omap2xxx_apll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap2xxx_apll_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PLL_MOD, align 4
  %5 = load i32, i32* @CM_CLKEN, align 4
  %6 = call i32 @omap2_cm_read_mod_reg(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @EN_APLL_LOCKED, align 4
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PLL_MOD, align 4
  %15 = load i32, i32* @CM_CLKEN, align 4
  %16 = call i32 @omap2_cm_write_mod_reg(i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @omap2_cm_read_mod_reg(i32, i32) #1

declare dso_local i32 @omap2_cm_write_mod_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
