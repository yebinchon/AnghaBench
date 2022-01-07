; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_serdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_serdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.device }
%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_device_id = type { i64, i64 }
%struct.h5 = type { i8*, %struct.TYPE_4__, i8*, i8*, %struct.h5_vnd*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.serdev_device*, i32 }
%struct.h5_vnd = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_UART_RESET_ON_INIT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"device-wake\00", align 1
@h5p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @h5_serdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_serdev_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.acpi_device_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.h5*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %7 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %8 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.h5* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.h5* %11, %struct.h5** %6, align 8
  %12 = load %struct.h5*, %struct.h5** %6, align 8
  %13 = icmp ne %struct.h5* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %114

17:                                               ; preds = %1
  %18 = load i32, i32* @HCI_UART_RESET_ON_INIT, align 4
  %19 = load %struct.h5*, %struct.h5** %6, align 8
  %20 = getelementptr inbounds %struct.h5, %struct.h5* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %18, i32* %21)
  %23 = load %struct.h5*, %struct.h5** %6, align 8
  %24 = getelementptr inbounds %struct.h5, %struct.h5* %23, i32 0, i32 1
  %25 = load %struct.h5*, %struct.h5** %6, align 8
  %26 = getelementptr inbounds %struct.h5, %struct.h5* %25, i32 0, i32 5
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %28 = load %struct.h5*, %struct.h5** %6, align 8
  %29 = getelementptr inbounds %struct.h5, %struct.h5* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.serdev_device* %27, %struct.serdev_device** %30, align 8
  %31 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %32 = load %struct.h5*, %struct.h5** %6, align 8
  %33 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %31, %struct.h5* %32)
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i64 @has_acpi_companion(%struct.device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %17
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call %struct.acpi_device_id* @acpi_match_device(i32 %42, %struct.device* %43)
  store %struct.acpi_device_id* %44, %struct.acpi_device_id** %4, align 8
  %45 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %46 = icmp ne %struct.acpi_device_id* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %114

50:                                               ; preds = %37
  %51 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %52 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.h5_vnd*
  %55 = load %struct.h5*, %struct.h5** %6, align 8
  %56 = getelementptr inbounds %struct.h5, %struct.h5* %55, i32 0, i32 4
  store %struct.h5_vnd* %54, %struct.h5_vnd** %56, align 8
  %57 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.h5*, %struct.h5** %6, align 8
  %62 = getelementptr inbounds %struct.h5, %struct.h5* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.h5*, %struct.h5** %6, align 8
  %64 = getelementptr inbounds %struct.h5, %struct.h5* %63, i32 0, i32 4
  %65 = load %struct.h5_vnd*, %struct.h5_vnd** %64, align 8
  %66 = getelementptr inbounds %struct.h5_vnd, %struct.h5_vnd* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %50
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.h5*, %struct.h5** %6, align 8
  %72 = getelementptr inbounds %struct.h5, %struct.h5* %71, i32 0, i32 4
  %73 = load %struct.h5_vnd*, %struct.h5_vnd** %72, align 8
  %74 = getelementptr inbounds %struct.h5_vnd, %struct.h5_vnd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @devm_acpi_dev_add_driver_gpios(%struct.device* %70, i64 %75)
  br label %77

77:                                               ; preds = %69, %50
  br label %78

78:                                               ; preds = %77, %17
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %81 = call i8* @devm_gpiod_get_optional(%struct.device* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.h5*, %struct.h5** %6, align 8
  %83 = getelementptr inbounds %struct.h5, %struct.h5* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.h5*, %struct.h5** %6, align 8
  %85 = getelementptr inbounds %struct.h5, %struct.h5* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.h5*, %struct.h5** %6, align 8
  %91 = getelementptr inbounds %struct.h5, %struct.h5* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %2, align 4
  br label %114

94:                                               ; preds = %78
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %97 = call i8* @devm_gpiod_get_optional(%struct.device* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.h5*, %struct.h5** %6, align 8
  %99 = getelementptr inbounds %struct.h5, %struct.h5* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.h5*, %struct.h5** %6, align 8
  %101 = getelementptr inbounds %struct.h5, %struct.h5* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @IS_ERR(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %94
  %106 = load %struct.h5*, %struct.h5** %6, align 8
  %107 = getelementptr inbounds %struct.h5, %struct.h5* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @PTR_ERR(i8* %108)
  store i32 %109, i32* %2, align 4
  br label %114

110:                                              ; preds = %94
  %111 = load %struct.h5*, %struct.h5** %6, align 8
  %112 = getelementptr inbounds %struct.h5, %struct.h5* %111, i32 0, i32 1
  %113 = call i32 @hci_uart_register_device(%struct.TYPE_4__* %112, i32* @h5p)
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %105, %89, %47, %14
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.h5* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.h5*) #1

declare dso_local i64 @has_acpi_companion(%struct.device*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(%struct.device*, i64) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @hci_uart_register_device(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
