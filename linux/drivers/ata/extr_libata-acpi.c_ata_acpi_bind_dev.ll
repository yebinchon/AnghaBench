; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_bind_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_bind_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.ata_port* }
%struct.ata_port = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.acpi_device = type { i64 }
%struct.ata_acpi_hotplug_context = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ata_device* }

@libata_noacpi = common dso_local global i64 0, align 8
@ATA_FLAG_ACPI_SATA = common dso_local global i32 0, align 4
@NO_PORT_MULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ata_acpi_dev_notify_dock = common dso_local global i32 0, align 4
@ata_acpi_dev_uevent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_acpi_bind_dev(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %struct.ata_acpi_hotplug_context*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %3, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 3
  %17 = call %struct.acpi_device* @ACPI_COMPANION(i32* %16)
  store %struct.acpi_device* %17, %struct.acpi_device** %4, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.acpi_device* @ACPI_COMPANION(i32* %22)
  store %struct.acpi_device* %23, %struct.acpi_device** %5, align 8
  %24 = load i64, i64* @libata_noacpi, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %1
  %27 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %28 = icmp ne %struct.acpi_device* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATA_FLAG_ACPI_SATA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %38 = icmp ne %struct.acpi_device* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %26, %1
  br label %108

40:                                               ; preds = %36, %29
  %41 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ATA_FLAG_ACPI_SATA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %40
  %48 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %49 = call i32 @sata_pmp_attached(%struct.ata_port* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NO_PORT_MULT, align 4
  %56 = call i32 @SATA_ADR(i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %67

57:                                               ; preds = %47
  %58 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %62 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @SATA_ADR(i32 %60, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %57, %51
  %68 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  store %struct.acpi_device* %68, %struct.acpi_device** %6, align 8
  br label %74

69:                                               ; preds = %40
  %70 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %71 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  store %struct.acpi_device* %73, %struct.acpi_device** %6, align 8
  br label %74

74:                                               ; preds = %69, %67
  %75 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %76 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %75, i32 0, i32 0
  %77 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @acpi_preset_companion(i32* %76, %struct.acpi_device* %77, i32 %78)
  %80 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %81 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %80, i32 0, i32 0
  %82 = call %struct.acpi_device* @ACPI_COMPANION(i32* %81)
  store %struct.acpi_device* %82, %struct.acpi_device** %7, align 8
  %83 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %84 = icmp ne %struct.acpi_device* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %87 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %74
  br label %108

91:                                               ; preds = %85
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.ata_acpi_hotplug_context* @kzalloc(i32 16, i32 %92)
  store %struct.ata_acpi_hotplug_context* %93, %struct.ata_acpi_hotplug_context** %8, align 8
  %94 = load %struct.ata_acpi_hotplug_context*, %struct.ata_acpi_hotplug_context** %8, align 8
  %95 = icmp ne %struct.ata_acpi_hotplug_context* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %108

97:                                               ; preds = %91
  %98 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %99 = load %struct.ata_acpi_hotplug_context*, %struct.ata_acpi_hotplug_context** %8, align 8
  %100 = getelementptr inbounds %struct.ata_acpi_hotplug_context, %struct.ata_acpi_hotplug_context* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store %struct.ata_device* %98, %struct.ata_device** %101, align 8
  %102 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %103 = load %struct.ata_acpi_hotplug_context*, %struct.ata_acpi_hotplug_context** %8, align 8
  %104 = getelementptr inbounds %struct.ata_acpi_hotplug_context, %struct.ata_acpi_hotplug_context* %103, i32 0, i32 0
  %105 = load i32, i32* @ata_acpi_dev_notify_dock, align 4
  %106 = load i32, i32* @ata_acpi_dev_uevent, align 4
  %107 = call i32 @acpi_initialize_hp_context(%struct.acpi_device* %102, i32* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %97, %96, %90, %39
  ret void
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @sata_pmp_attached(%struct.ata_port*) #1

declare dso_local i32 @SATA_ADR(i32, i32) #1

declare dso_local i32 @acpi_preset_companion(i32*, %struct.acpi_device*, i32) #1

declare dso_local %struct.ata_acpi_hotplug_context* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_initialize_hp_context(%struct.acpi_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
