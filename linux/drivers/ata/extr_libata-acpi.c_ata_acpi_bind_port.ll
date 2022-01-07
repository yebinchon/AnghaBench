; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_bind_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_bind_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.acpi_device = type { i64 }
%struct.ata_acpi_hotplug_context = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ata_port* }

@libata_noacpi = common dso_local global i64 0, align 8
@ATA_FLAG_ACPI_SATA = common dso_local global i32 0, align 4
@ATA_PFLAG_INIT_GTM_VALID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ata_acpi_ap_notify_dock = common dso_local global i32 0, align 4
@ata_acpi_ap_uevent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_acpi_bind_port(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.ata_acpi_hotplug_context*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call %struct.acpi_device* @ACPI_COMPANION(i32* %10)
  store %struct.acpi_device* %11, %struct.acpi_device** %3, align 8
  %12 = load i64, i64* @libata_noacpi, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATA_FLAG_ACPI_SATA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = icmp ne %struct.acpi_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %14, %1
  br label %73

25:                                               ; preds = %21
  %26 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 1
  %28 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %29 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @acpi_preset_companion(i32* %27, %struct.acpi_device* %28, i32 %31)
  %33 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %34 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 3
  %36 = call i64 @ata_acpi_gtm(%struct.ata_port* %33, i32* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load i32, i32* @ATA_PFLAG_INIT_GTM_VALID, align 4
  %40 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %25
  %45 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 1
  %47 = call %struct.acpi_device* @ACPI_COMPANION(i32* %46)
  store %struct.acpi_device* %47, %struct.acpi_device** %4, align 8
  %48 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %49 = icmp ne %struct.acpi_device* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %44
  br label %73

56:                                               ; preds = %50
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.ata_acpi_hotplug_context* @kzalloc(i32 16, i32 %57)
  store %struct.ata_acpi_hotplug_context* %58, %struct.ata_acpi_hotplug_context** %5, align 8
  %59 = load %struct.ata_acpi_hotplug_context*, %struct.ata_acpi_hotplug_context** %5, align 8
  %60 = icmp ne %struct.ata_acpi_hotplug_context* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %73

62:                                               ; preds = %56
  %63 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %64 = load %struct.ata_acpi_hotplug_context*, %struct.ata_acpi_hotplug_context** %5, align 8
  %65 = getelementptr inbounds %struct.ata_acpi_hotplug_context, %struct.ata_acpi_hotplug_context* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store %struct.ata_port* %63, %struct.ata_port** %66, align 8
  %67 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %68 = load %struct.ata_acpi_hotplug_context*, %struct.ata_acpi_hotplug_context** %5, align 8
  %69 = getelementptr inbounds %struct.ata_acpi_hotplug_context, %struct.ata_acpi_hotplug_context* %68, i32 0, i32 0
  %70 = load i32, i32* @ata_acpi_ap_notify_dock, align 4
  %71 = load i32, i32* @ata_acpi_ap_uevent, align 4
  %72 = call i32 @acpi_initialize_hp_context(%struct.acpi_device* %67, i32* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %61, %55, %24
  ret void
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @acpi_preset_companion(i32*, %struct.acpi_device*, i32) #1

declare dso_local i64 @ata_acpi_gtm(%struct.ata_port*, i32*) #1

declare dso_local %struct.ata_acpi_hotplug_context* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_initialize_hp_context(%struct.acpi_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
