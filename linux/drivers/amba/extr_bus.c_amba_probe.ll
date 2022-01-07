; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32 }
%struct.amba_device = type { i32 }
%struct.amba_driver = type { i32 (%struct.amba_device.0*, %struct.amba_id*)*, i32 }
%struct.amba_device.0 = type opaque
%struct.amba_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @amba_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amba_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.amba_device*, align 8
  %4 = alloca %struct.amba_driver*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.amba_device* @to_amba_device(%struct.device* %7)
  store %struct.amba_device* %8, %struct.amba_device** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.amba_driver* @to_amba_driver(i32 %11)
  store %struct.amba_driver* %12, %struct.amba_driver** %4, align 8
  %13 = load %struct.amba_driver*, %struct.amba_driver** %4, align 8
  %14 = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %17 = call %struct.amba_id* @amba_lookup(i32 %15, %struct.amba_device* %16)
  store %struct.amba_id* %17, %struct.amba_id** %5, align 8
  br label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_clk_set_defaults(i32 %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %68

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = call i32 @dev_pm_domain_attach(%struct.device* %27, i32 1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %68

32:                                               ; preds = %26
  %33 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %34 = call i32 @amba_get_enable_pclk(%struct.amba_device* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %2, align 8
  %39 = call i32 @dev_pm_domain_detach(%struct.device* %38, i32 1)
  br label %68

40:                                               ; preds = %32
  %41 = load %struct.device*, %struct.device** %2, align 8
  %42 = call i32 @pm_runtime_get_noresume(%struct.device* %41)
  %43 = load %struct.device*, %struct.device** %2, align 8
  %44 = call i32 @pm_runtime_set_active(%struct.device* %43)
  %45 = load %struct.device*, %struct.device** %2, align 8
  %46 = call i32 @pm_runtime_enable(%struct.device* %45)
  %47 = load %struct.amba_driver*, %struct.amba_driver** %4, align 8
  %48 = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %47, i32 0, i32 0
  %49 = load i32 (%struct.amba_device.0*, %struct.amba_id*)*, i32 (%struct.amba_device.0*, %struct.amba_id*)** %48, align 8
  %50 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %51 = bitcast %struct.amba_device* %50 to %struct.amba_device.0*
  %52 = load %struct.amba_id*, %struct.amba_id** %5, align 8
  %53 = call i32 %49(%struct.amba_device.0* %51, %struct.amba_id* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %68

57:                                               ; preds = %40
  %58 = load %struct.device*, %struct.device** %2, align 8
  %59 = call i32 @pm_runtime_disable(%struct.device* %58)
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = call i32 @pm_runtime_set_suspended(%struct.device* %60)
  %62 = load %struct.device*, %struct.device** %2, align 8
  %63 = call i32 @pm_runtime_put_noidle(%struct.device* %62)
  %64 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %65 = call i32 @amba_put_disable_pclk(%struct.amba_device* %64)
  %66 = load %struct.device*, %struct.device** %2, align 8
  %67 = call i32 @dev_pm_domain_detach(%struct.device* %66, i32 1)
  br label %68

68:                                               ; preds = %57, %56, %37, %31, %25
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.amba_device* @to_amba_device(%struct.device*) #1

declare dso_local %struct.amba_driver* @to_amba_driver(i32) #1

declare dso_local %struct.amba_id* @amba_lookup(i32, %struct.amba_device*) #1

declare dso_local i32 @of_clk_set_defaults(i32, i32) #1

declare dso_local i32 @dev_pm_domain_attach(%struct.device*, i32) #1

declare dso_local i32 @amba_get_enable_pclk(%struct.amba_device*) #1

declare dso_local i32 @dev_pm_domain_detach(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @amba_put_disable_pclk(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
