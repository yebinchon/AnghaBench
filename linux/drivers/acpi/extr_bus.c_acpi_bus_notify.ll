; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_bus_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_bus_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_driver* }
%struct.acpi_driver = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.acpi_device.0*, i32)* }
%struct.acpi_device.0 = type opaque

@ACPI_OST_SC_NON_SPECIFIC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ACPI_NOTIFY_BUS_CHECK event\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ACPI_NOTIFY_DEVICE_CHECK event\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ACPI_NOTIFY_DEVICE_WAKE event\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ACPI_NOTIFY_EJECT_REQUEST event\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ACPI_NOTIFY_DEVICE_CHECK_LIGHT event\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Device cannot be configured due to a frequency mismatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Device cannot be configured due to a bus mode mismatch\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Device has suffered a power fault\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Unknown event type 0x%x\0A\00", align 1
@ACPI_DRIVER_ALL_NOTIFY_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @acpi_bus_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_bus_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %struct.acpi_driver*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @ACPI_OST_SC_NON_SPECIFIC_FAILURE, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %37 [
    i32 135, label %13
    i32 133, label %16
    i32 131, label %19
    i32 130, label %22
    i32 132, label %25
    i32 129, label %28
    i32 134, label %31
    i32 128, label %34
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, i8*, ...) @acpi_handle_debug(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @acpi_handle_debug(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i8*, ...) @acpi_handle_debug(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %41

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32, i8*, ...) @acpi_handle_debug(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i32, i8*, ...) @acpi_handle_debug(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %41

28:                                               ; preds = %3
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @acpi_handle_err(i32 %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %41

31:                                               ; preds = %3
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @acpi_handle_err(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %41

34:                                               ; preds = %3
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @acpi_handle_err(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %41

37:                                               ; preds = %3
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, ...) @acpi_handle_debug(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %34, %31, %28, %25, %22, %19, %16, %13
  %42 = load i32, i32* %4, align 4
  %43 = call %struct.acpi_device* @acpi_bus_get_acpi_device(i32 %42)
  store %struct.acpi_device* %43, %struct.acpi_device** %7, align 8
  %44 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %45 = icmp ne %struct.acpi_device* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %91

47:                                               ; preds = %41
  %48 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 0
  %50 = load %struct.acpi_driver*, %struct.acpi_driver** %49, align 8
  store %struct.acpi_driver* %50, %struct.acpi_driver** %8, align 8
  %51 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  %52 = icmp ne %struct.acpi_driver* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  %55 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.acpi_device.0*, i32)*, i32 (%struct.acpi_device.0*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.acpi_device.0*, i32)* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  %61 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ACPI_DRIVER_ALL_NOTIFY_EVENTS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  %68 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.acpi_device.0*, i32)*, i32 (%struct.acpi_device.0*, i32)** %69, align 8
  %71 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %72 = bitcast %struct.acpi_device* %71 to %struct.acpi_device.0*
  %73 = load i32, i32* %5, align 4
  %74 = call i32 %70(%struct.acpi_device.0* %72, i32 %73)
  br label %75

75:                                               ; preds = %66, %59, %53, %47
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %80 = call i32 @acpi_bus_put_acpi_device(%struct.acpi_device* %79)
  br label %96

81:                                               ; preds = %75
  %82 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @acpi_hotplug_schedule(%struct.acpi_device* %82, i32 %83)
  %85 = call i64 @ACPI_SUCCESS(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %96

88:                                               ; preds = %81
  %89 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %90 = call i32 @acpi_bus_put_acpi_device(%struct.acpi_device* %89)
  br label %91

91:                                               ; preds = %88, %46
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @acpi_evaluate_ost(i32 %92, i32 %93, i32 %94, i32* null)
  br label %96

96:                                               ; preds = %91, %87, %78
  ret void
}

declare dso_local i32 @acpi_handle_debug(i32, i8*, ...) #1

declare dso_local i32 @acpi_handle_err(i32, i8*) #1

declare dso_local %struct.acpi_device* @acpi_bus_get_acpi_device(i32) #1

declare dso_local i32 @acpi_bus_put_acpi_device(%struct.acpi_device*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_hotplug_schedule(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_evaluate_ost(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
