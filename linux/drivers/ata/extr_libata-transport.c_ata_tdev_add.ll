; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-transport.c_ata_tdev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-transport.c_ata_tdev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.ata_link*, %struct.device }
%struct.ata_link = type { i32, i32, %struct.ata_port* }
%struct.ata_port = type { i32 }
%struct.device = type { i32, i32* }

@ata_tdev_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dev%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dev%d.%d.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_tdev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_tdev_add(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %8 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %9 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %8, i32 0, i32 2
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 1
  %12 = load %struct.ata_link*, %struct.ata_link** %11, align 8
  store %struct.ata_link* %12, %struct.ata_link** %5, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 2
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %6, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @device_initialize(%struct.device* %16)
  %18 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %19 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %18, i32 0, i32 1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* @ata_tdev_release, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %26 = call i64 @ata_is_host_link(%struct.ata_link* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_set_name(%struct.device* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %46

37:                                               ; preds = %1
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %43 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_set_name(%struct.device* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %28
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @transport_setup_device(%struct.device* %47)
  %49 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %50 = call i32 @ata_acpi_bind_dev(%struct.ata_device* %49)
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @device_add(%struct.device* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %57 = call i32 @ata_tdev_free(%struct.ata_device* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %46
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @transport_add_device(%struct.device* %60)
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @transport_configure_device(%struct.device* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i64 @ata_is_host_link(%struct.ata_link*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @transport_setup_device(%struct.device*) #1

declare dso_local i32 @ata_acpi_bind_dev(%struct.ata_device*) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @ata_tdev_free(%struct.ata_device*) #1

declare dso_local i32 @transport_add_device(%struct.device*) #1

declare dso_local i32 @transport_configure_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
