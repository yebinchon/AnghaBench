; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_psc_genpd_detach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_psc_genpd_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.device = type { i32 }
%struct.davinci_lpsc_clk = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.generic_pm_domain*, %struct.device*)* @davinci_psc_genpd_detach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_psc_genpd_detach_dev(%struct.generic_pm_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.davinci_lpsc_clk*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %7 = call %struct.davinci_lpsc_clk* @to_davinci_lpsc_clk(%struct.generic_pm_domain* %6)
  store %struct.davinci_lpsc_clk* %7, %struct.davinci_lpsc_clk** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %5, align 8
  %10 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @pm_clk_remove_clk(%struct.device* %8, i32* %11)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @pm_clk_destroy(%struct.device* %13)
  %15 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %5, align 8
  %16 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  ret void
}

declare dso_local %struct.davinci_lpsc_clk* @to_davinci_lpsc_clk(%struct.generic_pm_domain*) #1

declare dso_local i32 @pm_clk_remove_clk(%struct.device*, i32*) #1

declare dso_local i32 @pm_clk_destroy(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
