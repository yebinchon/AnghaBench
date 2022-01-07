; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_m53xx.c_fbcs_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_m53xx.c_fbcs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCFGPIO_PAR_CS = common dso_local global i32 0, align 4
@MCF_FBCS1_CSAR = common dso_local global i32 0, align 4
@MCF_FBCS1_CSCR = common dso_local global i32 0, align 4
@MCF_FBCS_CSMR_BAM_2M = common dso_local global i32 0, align 4
@MCF_FBCS_CSMR_V = common dso_local global i32 0, align 4
@MCF_FBCS1_CSMR = common dso_local global i32 0, align 4
@EXT_SRAM_ADDRESS = common dso_local global i32 0, align 4
@MCF_FBCS_CSCR_PS_16 = common dso_local global i32 0, align 4
@MCF_FBCS_CSCR_AA = common dso_local global i32 0, align 4
@MCF_FBCS_CSCR_SBM = common dso_local global i32 0, align 4
@MCF_FBCS_CSMR_BAM_512K = common dso_local global i32 0, align 4
@FLASH_ADDRESS = common dso_local global i32 0, align 4
@MCF_FBCS0_CSAR = common dso_local global i32 0, align 4
@MCF_FBCS_CSCR_BEM = common dso_local global i32 0, align 4
@MCF_FBCS0_CSCR = common dso_local global i32 0, align 4
@MCF_FBCS_CSMR_BAM_32M = common dso_local global i32 0, align 4
@MCF_FBCS0_CSMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbcs_init() #0 {
  %1 = load i32, i32* @MCFGPIO_PAR_CS, align 4
  %2 = call i32 @writeb(i32 62, i32 %1)
  %3 = load i32, i32* @MCF_FBCS1_CSAR, align 4
  %4 = call i32 @writel(i32 268959744, i32 %3)
  %5 = load i32, i32* @MCF_FBCS1_CSCR, align 4
  %6 = call i32 @writel(i32 2766720, i32 %5)
  %7 = load i32, i32* @MCF_FBCS_CSMR_BAM_2M, align 4
  %8 = load i32, i32* @MCF_FBCS_CSMR_V, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MCF_FBCS1_CSMR, align 4
  %11 = call i32 @writel(i32 %9, i32 %10)
  %12 = call i32 @writew(i32 65535, i32 268959744)
  %13 = load i32, i32* @EXT_SRAM_ADDRESS, align 4
  %14 = load i32, i32* @MCF_FBCS1_CSAR, align 4
  %15 = call i32 @writel(i32 %13, i32 %14)
  %16 = load i32, i32* @MCF_FBCS_CSCR_PS_16, align 4
  %17 = load i32, i32* @MCF_FBCS_CSCR_AA, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MCF_FBCS_CSCR_SBM, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @MCF_FBCS_CSCR_WS(i32 1)
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MCF_FBCS1_CSCR, align 4
  %24 = call i32 @writel(i32 %22, i32 %23)
  %25 = load i32, i32* @MCF_FBCS_CSMR_BAM_512K, align 4
  %26 = load i32, i32* @MCF_FBCS_CSMR_V, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MCF_FBCS1_CSMR, align 4
  %29 = call i32 @writel(i32 %27, i32 %28)
  %30 = load i32, i32* @FLASH_ADDRESS, align 4
  %31 = load i32, i32* @MCF_FBCS0_CSAR, align 4
  %32 = call i32 @writel(i32 %30, i32 %31)
  %33 = load i32, i32* @MCF_FBCS_CSCR_PS_16, align 4
  %34 = load i32, i32* @MCF_FBCS_CSCR_BEM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MCF_FBCS_CSCR_AA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MCF_FBCS_CSCR_SBM, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @MCF_FBCS_CSCR_WS(i32 7)
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MCF_FBCS0_CSCR, align 4
  %43 = call i32 @writel(i32 %41, i32 %42)
  %44 = load i32, i32* @MCF_FBCS_CSMR_BAM_32M, align 4
  %45 = load i32, i32* @MCF_FBCS_CSMR_V, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MCF_FBCS0_CSMR, align 4
  %48 = call i32 @writel(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @MCF_FBCS_CSCR_WS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
