; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_phy_internal.c_am35x_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_phy_internal.c_am35x_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AM35XX_CONTROL_DEVCONF2 = common dso_local global i32 0, align 4
@CONF2_OTGMODE = common dso_local global i32 0, align 4
@CONF2_FORCE_HOST = common dso_local global i32 0, align 4
@CONF2_FORCE_DEVICE = common dso_local global i32 0, align 4
@CONF2_NO_OVERRIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unsupported mode %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @am35x_set_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @AM35XX_CONTROL_DEVCONF2, align 4
  %5 = call i32 @omap_ctrl_readl(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @CONF2_OTGMODE, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  switch i32 %10, label %23 [
    i32 130, label %11
    i32 128, label %15
    i32 129, label %19
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @CONF2_FORCE_HOST, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* @CONF2_FORCE_DEVICE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @CONF2_NO_OVERRIDE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %19, %15, %11
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @AM35XX_CONTROL_DEVCONF2, align 4
  %29 = call i32 @omap_ctrl_writel(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @omap_ctrl_readl(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @omap_ctrl_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
