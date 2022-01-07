; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_acpi_lid_input_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_acpi_lid_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_button = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @acpi_lid_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_lid_input_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_button*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.acpi_device* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.acpi_device* %6, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.acpi_button* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.acpi_button* %8, %struct.acpi_button** %4, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = call i32 @acpi_lid_evaluate_state(%struct.acpi_device* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.acpi_button*, %struct.acpi_button** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = call i32 (...) @ktime_get()
  %18 = load %struct.acpi_button*, %struct.acpi_button** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = call i32 @acpi_lid_initialize_state(%struct.acpi_device* %20)
  ret i32 0
}

declare dso_local %struct.acpi_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.acpi_button* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_lid_evaluate_state(%struct.acpi_device*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @acpi_lid_initialize_state(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
