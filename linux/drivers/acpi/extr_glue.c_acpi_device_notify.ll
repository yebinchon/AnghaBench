; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_glue.c_acpi_device_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_glue.c_acpi_device_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_bus_type = type { i32 (%struct.device*)*, %struct.acpi_device* (%struct.device*)* }
%struct.acpi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.device*)* }

@.str = private unnamed_addr constant [29 x i8] c"Unable to get handle for %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_FULL_PATHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_device_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_notify(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.acpi_bus_type*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.acpi_bus_type* @acpi_get_bus_type(%struct.device* %7)
  store %struct.acpi_bus_type* %8, %struct.acpi_bus_type** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @acpi_bind_one(%struct.device* %9, %struct.acpi_device* null)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %3, align 8
  %15 = icmp ne %struct.acpi_bus_type* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %17, i32 0, i32 1
  %19 = load %struct.acpi_device* (%struct.device*)*, %struct.acpi_device* (%struct.device*)** %18, align 8
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = call %struct.acpi_device* %19(%struct.device* %20)
  store %struct.acpi_device* %21, %struct.acpi_device** %6, align 8
  %22 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %23 = icmp ne %struct.acpi_device* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @dev_name(%struct.device* %25)
  %27 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %87

30:                                               ; preds = %16
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %33 = call i32 @acpi_bind_one(%struct.device* %31, %struct.acpi_device* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %87

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %13, %1
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %39)
  store %struct.acpi_device* %40, %struct.acpi_device** %4, align 8
  %41 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %42 = icmp ne %struct.acpi_device* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %87

44:                                               ; preds = %38
  %45 = load %struct.device*, %struct.device** %2, align 8
  %46 = call i64 @dev_is_platform(%struct.device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.device*, %struct.device** %2, align 8
  %50 = call i32 @acpi_configure_pmsi_domain(%struct.device* %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %3, align 8
  %53 = icmp ne %struct.acpi_bus_type* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %55, i32 0, i32 0
  %57 = load i32 (%struct.device*)*, i32 (%struct.device*)** %56, align 8
  %58 = icmp ne i32 (%struct.device*)* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %60, i32 0, i32 0
  %62 = load i32 (%struct.device*)*, i32 (%struct.device*)** %61, align 8
  %63 = load %struct.device*, %struct.device** %2, align 8
  %64 = call i32 %62(%struct.device* %63)
  br label %86

65:                                               ; preds = %54, %51
  %66 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %67 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = icmp ne %struct.TYPE_2__* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %72 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.device*)*, i32 (%struct.device*)** %74, align 8
  %76 = icmp ne i32 (%struct.device*)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %79 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.device*)*, i32 (%struct.device*)** %81, align 8
  %83 = load %struct.device*, %struct.device** %2, align 8
  %84 = call i32 %82(%struct.device* %83)
  br label %85

85:                                               ; preds = %77, %70, %65
  br label %86

86:                                               ; preds = %85, %59
  br label %87

87:                                               ; preds = %86, %43, %36, %24
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.acpi_bus_type* @acpi_get_bus_type(%struct.device*) #1

declare dso_local i32 @acpi_bind_one(%struct.device*, %struct.acpi_device*) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i64 @dev_is_platform(%struct.device*) #1

declare dso_local i32 @acpi_configure_pmsi_domain(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
