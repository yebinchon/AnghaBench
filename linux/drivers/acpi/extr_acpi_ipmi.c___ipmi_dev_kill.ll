; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c___ipmi_dev_kill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c___ipmi_dev_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.acpi_ipmi_device* }
%struct.acpi_ipmi_device = type { i32, i32 }

@driver_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ipmi_device*)* @__ipmi_dev_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipmi_dev_kill(%struct.acpi_ipmi_device* %0) #0 {
  %2 = alloca %struct.acpi_ipmi_device*, align 8
  store %struct.acpi_ipmi_device* %0, %struct.acpi_ipmi_device** %2, align 8
  %3 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %3, i32 0, i32 1
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0), align 8
  %7 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %8 = icmp eq %struct.acpi_ipmi_device* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.acpi_ipmi_device* null, %struct.acpi_ipmi_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0), align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  ret void
}

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
