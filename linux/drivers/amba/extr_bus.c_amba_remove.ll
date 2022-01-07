; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.amba_device = type { i32 }
%struct.amba_driver = type { i32 (%struct.amba_device.0*)* }
%struct.amba_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @amba_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amba_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.amba_device*, align 8
  %4 = alloca %struct.amba_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.amba_device* @to_amba_device(%struct.device* %6)
  store %struct.amba_device* %7, %struct.amba_device** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.amba_driver* @to_amba_driver(i32 %10)
  store %struct.amba_driver* %11, %struct.amba_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call i32 @pm_runtime_get_sync(%struct.device* %12)
  %14 = load %struct.amba_driver*, %struct.amba_driver** %4, align 8
  %15 = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.amba_device.0*)*, i32 (%struct.amba_device.0*)** %15, align 8
  %17 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %18 = bitcast %struct.amba_device* %17 to %struct.amba_device.0*
  %19 = call i32 %16(%struct.amba_device.0* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = call i32 @pm_runtime_put_noidle(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 @pm_runtime_disable(%struct.device* %22)
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = call i32 @pm_runtime_set_suspended(%struct.device* %24)
  %26 = load %struct.device*, %struct.device** %2, align 8
  %27 = call i32 @pm_runtime_put_noidle(%struct.device* %26)
  %28 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %29 = call i32 @amba_put_disable_pclk(%struct.amba_device* %28)
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = call i32 @dev_pm_domain_detach(%struct.device* %30, i32 1)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.amba_device* @to_amba_device(%struct.device*) #1

declare dso_local %struct.amba_driver* @to_amba_driver(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @amba_put_disable_pclk(%struct.amba_device*) #1

declare dso_local i32 @dev_pm_domain_detach(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
