; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_phy_internal.c_am35x_musb_phy_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_phy_internal.c_am35x_musb_phy_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@AM35XX_CONTROL_DEVCONF2 = common dso_local global i32 0, align 4
@CONF2_RESET = common dso_local global i32 0, align 4
@CONF2_PHYPWRDN = common dso_local global i32 0, align 4
@CONF2_OTGPWRDN = common dso_local global i32 0, align 4
@CONF2_PHY_PLLON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Waiting for PHY clock good...\0A\00", align 1
@CONF2_PHYCLKGD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"musb PHY clock good timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @am35x_musb_phy_power(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = call i64 @msecs_to_jiffies(i32 100)
  %7 = add i64 %5, %6
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load i32, i32* @AM35XX_CONTROL_DEVCONF2, align 4
  %12 = call i32 @omap_ctrl_readl(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @CONF2_RESET, align 4
  %14 = load i32, i32* @CONF2_PHYPWRDN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CONF2_OTGPWRDN, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @CONF2_PHY_PLLON, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AM35XX_CONTROL_DEVCONF2, align 4
  %26 = call i32 @omap_ctrl_writel(i32 %24, i32 %25)
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %43, %10
  %29 = load i32, i32* @AM35XX_CONTROL_DEVCONF2, align 4
  %30 = call i32 @omap_ctrl_readl(i32 %29)
  %31 = load i32, i32* @CONF2_PHYCLKGD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = call i32 (...) @cpu_relax()
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @time_after(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %44

43:                                               ; preds = %35
  br label %28

44:                                               ; preds = %41, %28
  br label %60

45:                                               ; preds = %1
  %46 = load i32, i32* @AM35XX_CONTROL_DEVCONF2, align 4
  %47 = call i32 @omap_ctrl_readl(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @CONF2_PHY_PLLON, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @CONF2_PHYPWRDN, align 4
  %53 = load i32, i32* @CONF2_OTGPWRDN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @AM35XX_CONTROL_DEVCONF2, align 4
  %59 = call i32 @omap_ctrl_writel(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %45, %44
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @omap_ctrl_readl(i32) #1

declare dso_local i32 @omap_ctrl_writel(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
