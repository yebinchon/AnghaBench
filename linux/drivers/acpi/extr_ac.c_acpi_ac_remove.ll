; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ac.c_acpi_ac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ac.c_acpi_ac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_ac = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_ac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ac_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_ac*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.acpi_ac* null, %struct.acpi_ac** %4, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = icmp ne %struct.acpi_device* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.acpi_ac* @acpi_driver_data(%struct.acpi_device* %8)
  %10 = icmp ne %struct.acpi_ac* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %7
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = call %struct.acpi_ac* @acpi_driver_data(%struct.acpi_device* %15)
  store %struct.acpi_ac* %16, %struct.acpi_ac** %4, align 8
  %17 = load %struct.acpi_ac*, %struct.acpi_ac** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @power_supply_unregister(i32 %19)
  %21 = load %struct.acpi_ac*, %struct.acpi_ac** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %21, i32 0, i32 0
  %23 = call i32 @unregister_acpi_notifier(i32* %22)
  %24 = load %struct.acpi_ac*, %struct.acpi_ac** %4, align 8
  %25 = call i32 @kfree(%struct.acpi_ac* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.acpi_ac* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @unregister_acpi_notifier(i32*) #1

declare dso_local i32 @kfree(%struct.acpi_ac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
