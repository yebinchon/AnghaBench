; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.acpi_device = type { i32 }
%struct.hisi_lpc_dev = type { %struct.logic_pio_hwaddr* }
%struct.logic_pio_hwaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_lpc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_lpc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.hisi_lpc_dev*, align 8
  %6 = alloca %struct.logic_pio_hwaddr*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.hisi_lpc_dev* @dev_get_drvdata(%struct.device* %11)
  store %struct.hisi_lpc_dev* %12, %struct.hisi_lpc_dev** %5, align 8
  %13 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %13, i32 0, i32 0
  %15 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %14, align 8
  store %struct.logic_pio_hwaddr* %15, %struct.logic_pio_hwaddr** %6, align 8
  %16 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %17 = icmp ne %struct.acpi_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @hisi_lpc_acpi_remove(%struct.device* %19)
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @of_platform_depopulate(%struct.device* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %26 = call i32 @logic_pio_unregister_range(%struct.logic_pio_hwaddr* %25)
  ret i32 0
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local %struct.hisi_lpc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @hisi_lpc_acpi_remove(%struct.device*) #1

declare dso_local i32 @of_platform_depopulate(%struct.device*) #1

declare dso_local i32 @logic_pio_unregister_range(%struct.logic_pio_hwaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
