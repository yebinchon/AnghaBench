; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_pm.c_davinci_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_pm.c_davinci_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@pm_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PLLCTL = common dso_local global i64 0, align 8
@PLLCTL_PLLENSRC = common dso_local global i32 0, align 4
@PLLCTL_PLLEN = common dso_local global i32 0, align 4
@PLL_BYPASS_TIME = common dso_local global i32 0, align 4
@PLLCTL_PLLPWRDN = common dso_local global i32 0, align 4
@DEEPSLEEP_SLEEPCOUNT_MASK = common dso_local global i32 0, align 4
@PLLCTL_PLLRST = common dso_local global i32 0, align 4
@PLL_RESET_TIME = common dso_local global i32 0, align 4
@PLL_LOCK_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @davinci_pm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_pm_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 1), align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %35

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %7 = load i64, i64* @PLLCTL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_readl(i64 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @PLLCTL_PLLENSRC, align 4
  %11 = load i32, i32* @PLLCTL_PLLEN, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %18 = load i64, i64* @PLLCTL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @__raw_writel(i32 %16, i64 %19)
  %21 = load i32, i32* @PLL_BYPASS_TIME, align 4
  %22 = call i32 @udelay(i32 %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %24 = load i64, i64* @PLLCTL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @__raw_readl(i64 %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @PLLCTL_PLLPWRDN, align 4
  %28 = load i32, i32* %1, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %32 = load i64, i64* @PLLCTL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @__raw_writel(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %5, %0
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 2), align 8
  %37 = call i32 @__raw_readl(i64 %36)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @DEEPSLEEP_SLEEPCOUNT_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %1, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 3), align 8
  %43 = load i32, i32* %1, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 2), align 8
  %47 = call i32 @__raw_writel(i32 %45, i64 %46)
  %48 = call i32 @davinci_sram_suspend(%struct.TYPE_3__* @pm_config)
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 1), align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %35
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %54 = load i64, i64* @PLLCTL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @__raw_readl(i64 %55)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* @PLLCTL_PLLRST, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %1, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* %1, align 4
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %63 = load i64, i64* @PLLCTL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @__raw_writel(i32 %61, i64 %64)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %67 = load i64, i64* @PLLCTL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @__raw_readl(i64 %68)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @PLLCTL_PLLPWRDN, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %1, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* %1, align 4
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %76 = load i64, i64* @PLLCTL, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @__raw_writel(i32 %74, i64 %77)
  %79 = load i32, i32* @PLL_RESET_TIME, align 4
  %80 = call i32 @udelay(i32 %79)
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %82 = load i64, i64* @PLLCTL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @__raw_readl(i64 %83)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* @PLLCTL_PLLRST, align 4
  %86 = load i32, i32* %1, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %1, align 4
  %88 = load i32, i32* %1, align 4
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %90 = load i64, i64* @PLLCTL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @__raw_writel(i32 %88, i64 %91)
  %93 = load i32, i32* @PLL_LOCK_TIME, align 4
  %94 = call i32 @udelay(i32 %93)
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %96 = load i64, i64* @PLLCTL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @__raw_readl(i64 %97)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* @PLLCTL_PLLENSRC, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %1, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* @PLLCTL_PLLEN, align 4
  %104 = load i32, i32* %1, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* %1, align 4
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pm_config, i32 0, i32 0), align 8
  %108 = load i64, i64* @PLLCTL, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @__raw_writel(i32 %106, i64 %109)
  br label %111

111:                                              ; preds = %52, %35
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @davinci_sram_suspend(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
