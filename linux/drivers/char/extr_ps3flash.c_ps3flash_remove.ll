; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_ps3flash.c_ps3flash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_ps3flash.c_ps3flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3_storage_device = type { i32 }

@ps3flash_misc = common dso_local global i32 0, align 4
@ps3flash_dev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_system_bus_device*)* @ps3flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3flash_remove(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca %struct.ps3_system_bus_device*, align 8
  %3 = alloca %struct.ps3_storage_device*, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %2, align 8
  %4 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %5 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %4, i32 0, i32 0
  %6 = call %struct.ps3_storage_device* @to_ps3_storage_device(i32* %5)
  store %struct.ps3_storage_device* %6, %struct.ps3_storage_device** %3, align 8
  %7 = call i32 @ps3_os_area_flash_register(i32* null)
  %8 = call i32 @misc_deregister(i32* @ps3flash_misc)
  %9 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %3, align 8
  %10 = call i32 @ps3stor_teardown(%struct.ps3_storage_device* %9)
  %11 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %3, align 8
  %12 = getelementptr inbounds %struct.ps3_storage_device, %struct.ps3_storage_device* %11, i32 0, i32 0
  %13 = call i32 @ps3_system_bus_get_drvdata(i32* %12)
  %14 = call i32 @kfree(i32 %13)
  %15 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %3, align 8
  %16 = getelementptr inbounds %struct.ps3_storage_device, %struct.ps3_storage_device* %15, i32 0, i32 0
  %17 = call i32 @ps3_system_bus_set_drvdata(i32* %16, i32* null)
  store i32* null, i32** @ps3flash_dev, align 8
  ret i32 0
}

declare dso_local %struct.ps3_storage_device* @to_ps3_storage_device(i32*) #1

declare dso_local i32 @ps3_os_area_flash_register(i32*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @ps3stor_teardown(%struct.ps3_storage_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ps3_system_bus_get_drvdata(i32*) #1

declare dso_local i32 @ps3_system_bus_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
