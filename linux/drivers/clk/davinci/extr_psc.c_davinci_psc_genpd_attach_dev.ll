; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_psc_genpd_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_psc_genpd_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.device = type { i32 }
%struct.davinci_lpsc_clk = type { %struct.clk*, i32, i32 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*, %struct.device*)* @davinci_psc_genpd_attach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_psc_genpd_attach_dev(%struct.generic_pm_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pm_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.davinci_lpsc_clk*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %10 = call %struct.davinci_lpsc_clk* @to_davinci_lpsc_clk(%struct.generic_pm_domain* %9)
  store %struct.davinci_lpsc_clk* %10, %struct.davinci_lpsc_clk** %6, align 8
  %11 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %6, align 8
  %12 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @best_dev_name(i32 %13)
  %15 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %6, align 8
  %16 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %15, i32 0, i32 1
  %17 = call i32 @clk_hw_get_name(i32* %16)
  %18 = call %struct.clk* @clk_get_sys(i32 %14, i32 %17)
  store %struct.clk* %18, %struct.clk** %7, align 8
  %19 = load %struct.clk*, %struct.clk** %7, align 8
  %20 = call i64 @IS_ERR(%struct.clk* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.clk*, %struct.clk** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.clk* %23)
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @pm_clk_create(%struct.device* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %45

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.clk*, %struct.clk** %7, align 8
  %34 = call i32 @pm_clk_add_clk(%struct.device* %32, %struct.clk* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.clk*, %struct.clk** %7, align 8
  %40 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %6, align 8
  %41 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %40, i32 0, i32 0
  store %struct.clk* %39, %struct.clk** %41, align 8
  store i32 0, i32* %3, align 4
  br label %49

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @pm_clk_destroy(%struct.device* %43)
  br label %45

45:                                               ; preds = %42, %30
  %46 = load %struct.clk*, %struct.clk** %7, align 8
  %47 = call i32 @clk_put(%struct.clk* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %38, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.davinci_lpsc_clk* @to_davinci_lpsc_clk(%struct.generic_pm_domain*) #1

declare dso_local %struct.clk* @clk_get_sys(i32, i32) #1

declare dso_local i32 @best_dev_name(i32) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @pm_clk_create(%struct.device*) #1

declare dso_local i32 @pm_clk_add_clk(%struct.device*, %struct.clk*) #1

declare dso_local i32 @pm_clk_destroy(%struct.device*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
