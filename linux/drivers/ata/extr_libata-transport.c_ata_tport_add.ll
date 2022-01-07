; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-transport.c_ata_tport_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-transport.c_ata_tport_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.device*, i32* }
%struct.ata_port = type { i32, i32, i32, %struct.device }

@ata_port_type = common dso_local global i32 0, align 4
@ata_tport_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ata%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_tport_add(%struct.device* %0, %struct.ata_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ata_port* %1, %struct.ata_port** %5, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 3
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.device*, %struct.device** %7, align 8
  %11 = call i32 @device_initialize(%struct.device* %10)
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 2
  store i32* @ata_port_type, i32** %13, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  store %struct.device* %14, %struct.device** %16, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ata_host_get(i32 %19)
  %21 = load i32, i32* @ata_tport_release, align 4
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_set_name(%struct.device* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 @transport_setup_device(%struct.device* %29)
  %31 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %32 = call i32 @ata_acpi_bind_port(%struct.ata_port* %31)
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call i32 @device_add(%struct.device* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %63

38:                                               ; preds = %2
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = call i32 @device_enable_async_suspend(%struct.device* %39)
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = call i32 @pm_runtime_set_active(%struct.device* %41)
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 @pm_runtime_enable(%struct.device* %43)
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 @pm_runtime_forbid(%struct.device* %45)
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call i32 @transport_add_device(%struct.device* %47)
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @transport_configure_device(%struct.device* %49)
  %51 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %52 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %51, i32 0, i32 1
  %53 = call i32 @ata_tlink_add(i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  br label %58

57:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %73

58:                                               ; preds = %56
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call i32 @transport_remove_device(%struct.device* %59)
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = call i32 @device_del(%struct.device* %61)
  br label %63

63:                                               ; preds = %58, %37
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = call i32 @transport_destroy_device(%struct.device* %64)
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = call i32 @put_device(%struct.device* %66)
  %68 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %69 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ata_host_put(i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %57
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @ata_host_get(i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @transport_setup_device(%struct.device*) #1

declare dso_local i32 @ata_acpi_bind_port(%struct.ata_port*) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.device*) #1

declare dso_local i32 @transport_add_device(%struct.device*) #1

declare dso_local i32 @transport_configure_device(%struct.device*) #1

declare dso_local i32 @ata_tlink_add(i32*) #1

declare dso_local i32 @transport_remove_device(%struct.device*) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @transport_destroy_device(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @ata_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
