; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_add_clk_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_add_clk_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.generic_pm_domain = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GENPD_FLAG_PM_CLK = common dso_local global i32 0, align 4
@GENPD_FLAG_ALWAYS_ON = common dso_local global i32 0, align 4
@GENPD_FLAG_ACTIVE_WAKEUP = common dso_local global i32 0, align 4
@r9a06g032_attach_dev = common dso_local global i32 0, align 4
@r9a06g032_detach_dev = common dso_local global i32 0, align 4
@pm_domain_always_on_gov = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @r9a06g032_add_clk_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r9a06g032_add_clk_domain(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.generic_pm_domain*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.generic_pm_domain* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.generic_pm_domain* %11, %struct.generic_pm_domain** %5, align 8
  %12 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %13 = icmp ne %struct.generic_pm_domain* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %22 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @GENPD_FLAG_PM_CLK, align 4
  %24 = load i32, i32* @GENPD_FLAG_ALWAYS_ON, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GENPD_FLAG_ACTIVE_WAKEUP, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %29 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @r9a06g032_attach_dev, align 4
  %31 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %32 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @r9a06g032_detach_dev, align 4
  %34 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %35 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %37 = call i32 @pm_genpd_init(%struct.generic_pm_domain* %36, i32* @pm_domain_always_on_gov, i32 0)
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %40 = call i32 @of_genpd_add_provider_simple(%struct.device_node* %38, %struct.generic_pm_domain* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %17, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.generic_pm_domain* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.generic_pm_domain*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_simple(%struct.device_node*, %struct.generic_pm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
