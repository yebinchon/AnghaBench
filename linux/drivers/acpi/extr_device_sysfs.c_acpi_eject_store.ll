; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c_acpi_eject_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c_acpi_eject_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_device = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@ACPI_OST_EC_OSPM_EJECT = common dso_local global i32 0, align 4
@ACPI_OST_SC_NON_SPECIFIC_FAILURE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @acpi_eject_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_eject_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.acpi_device* @to_acpi_device(%struct.device* %13)
  store %struct.acpi_device* %14, %struct.acpi_device** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 49
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %97

26:                                               ; preds = %17
  %27 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @ENODEV, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %97

47:                                               ; preds = %39, %31
  %48 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @acpi_get_type(i32 %50, i32* %11)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @ACPI_FAILURE(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55, %47
  %62 = load i64, i64* @ENODEV, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %97

64:                                               ; preds = %55
  %65 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %66 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %65, i32 0, i32 1
  %67 = call i32 @get_device(i32* %66)
  %68 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %69 = load i32, i32* @ACPI_OST_EC_OSPM_EJECT, align 4
  %70 = call i64 @acpi_hotplug_schedule(%struct.acpi_device* %68, i32 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @ACPI_SUCCESS(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %5, align 8
  br label %97

76:                                               ; preds = %64
  %77 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %78 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %77, i32 0, i32 1
  %79 = call i32 @put_device(i32* %78)
  %80 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %81 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ACPI_OST_EC_OSPM_EJECT, align 4
  %84 = load i32, i32* @ACPI_OST_SC_NON_SPECIFIC_FAILURE, align 4
  %85 = call i32 @acpi_evaluate_ost(i32 %82, i32 %83, i32 %84, i32* null)
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @AE_NO_MEMORY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = load i64, i64* @ENOMEM, align 8
  %91 = sub i64 0, %90
  br label %95

92:                                               ; preds = %76
  %93 = load i64, i64* @EAGAIN, align 8
  %94 = sub i64 0, %93
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i64 [ %91, %89 ], [ %94, %92 ]
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %95, %74, %61, %44, %23
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i64 @acpi_get_type(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i64 @acpi_hotplug_schedule(%struct.acpi_device*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @acpi_evaluate_ost(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
