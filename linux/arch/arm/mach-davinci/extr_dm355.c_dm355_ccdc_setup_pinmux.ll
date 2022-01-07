; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_dm355.c_dm355_ccdc_setup_pinmux.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_dm355.c_dm355_ccdc_setup_pinmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DM355_VIN_PCLK = common dso_local global i32 0, align 4
@DM355_VIN_CAM_WEN = common dso_local global i32 0, align 4
@DM355_VIN_CAM_VD = common dso_local global i32 0, align 4
@DM355_VIN_CAM_HD = common dso_local global i32 0, align 4
@DM355_VIN_YIN_EN = common dso_local global i32 0, align 4
@DM355_VIN_CINL_EN = common dso_local global i32 0, align 4
@DM355_VIN_CINH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dm355_ccdc_setup_pinmux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm355_ccdc_setup_pinmux() #0 {
  %1 = load i32, i32* @DM355_VIN_PCLK, align 4
  %2 = call i32 @davinci_cfg_reg(i32 %1)
  %3 = load i32, i32* @DM355_VIN_CAM_WEN, align 4
  %4 = call i32 @davinci_cfg_reg(i32 %3)
  %5 = load i32, i32* @DM355_VIN_CAM_VD, align 4
  %6 = call i32 @davinci_cfg_reg(i32 %5)
  %7 = load i32, i32* @DM355_VIN_CAM_HD, align 4
  %8 = call i32 @davinci_cfg_reg(i32 %7)
  %9 = load i32, i32* @DM355_VIN_YIN_EN, align 4
  %10 = call i32 @davinci_cfg_reg(i32 %9)
  %11 = load i32, i32* @DM355_VIN_CINL_EN, align 4
  %12 = call i32 @davinci_cfg_reg(i32 %11)
  %13 = load i32, i32* @DM355_VIN_CINH_EN, align 4
  %14 = call i32 @davinci_cfg_reg(i32 %13)
  ret void
}

declare dso_local i32 @davinci_cfg_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
