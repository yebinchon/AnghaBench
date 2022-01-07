; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c___platform_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c___platform_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, %struct.module* }
%struct.module = type { i32 }

@platform_bus_type = common dso_local global i32 0, align 4
@platform_drv_probe = common dso_local global i32 0, align 4
@platform_drv_remove = common dso_local global i32 0, align 4
@platform_drv_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__platform_driver_register(%struct.platform_driver* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.platform_driver*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.platform_driver* %0, %struct.platform_driver** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %5 = load %struct.module*, %struct.module** %4, align 8
  %6 = load %struct.platform_driver*, %struct.platform_driver** %3, align 8
  %7 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  store %struct.module* %5, %struct.module** %8, align 8
  %9 = load %struct.platform_driver*, %struct.platform_driver** %3, align 8
  %10 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32* @platform_bus_type, i32** %11, align 8
  %12 = load i32, i32* @platform_drv_probe, align 4
  %13 = load %struct.platform_driver*, %struct.platform_driver** %3, align 8
  %14 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* @platform_drv_remove, align 4
  %17 = load %struct.platform_driver*, %struct.platform_driver** %3, align 8
  %18 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @platform_drv_shutdown, align 4
  %21 = load %struct.platform_driver*, %struct.platform_driver** %3, align 8
  %22 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.platform_driver*, %struct.platform_driver** %3, align 8
  %25 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %24, i32 0, i32 0
  %26 = call i32 @driver_register(%struct.TYPE_2__* %25)
  ret i32 %26
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
