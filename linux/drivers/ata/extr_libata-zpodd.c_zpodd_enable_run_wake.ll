; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_enable_run_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpodd_enable_run_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, %struct.zpodd* }
%struct.zpodd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpodd_enable_run_wake(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.zpodd*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %4 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %5 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %4, i32 0, i32 2
  %6 = load %struct.zpodd*, %struct.zpodd** %5, align 8
  store %struct.zpodd* %6, %struct.zpodd** %3, align 8
  %7 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %8 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sdev_disable_disk_events(i32 %9)
  %11 = load %struct.zpodd*, %struct.zpodd** %3, align 8
  %12 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = call i32 @acpi_pm_set_device_wakeup(i32* %14, i32 1)
  ret void
}

declare dso_local i32 @sdev_disable_disk_events(i32) #1

declare dso_local i32 @acpi_pm_set_device_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
