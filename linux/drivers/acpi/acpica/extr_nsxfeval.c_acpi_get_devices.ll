; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsxfeval.c_acpi_get_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsxfeval.c_acpi_get_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_get_devices_info = type { i8*, i64, i8* }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_UNLOCK = common dso_local global i32 0, align 4
@acpi_ns_get_device_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_get_devices(i8* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_get_devices_info, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 (i8*, i64, i8*, i8**)* @acpi_get_devices)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %11, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %11, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %11, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %26 = call i32 @acpi_ut_acquire_mutex(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %35 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %36 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %37 = load i32, i32* @ACPI_NS_WALK_UNLOCK, align 4
  %38 = load i32, i32* @acpi_ns_get_device_callback, align 4
  %39 = load i8**, i8*** %9, align 8
  %40 = call i32 @acpi_ns_walk_namespace(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32* null, %struct.acpi_get_devices_info* %11, i8** %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %42 = call i32 @acpi_ut_release_mutex(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @return_ACPI_STATUS(i32 %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i8*, i64, i8*, i8**)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i32, i32, i32, i32, i32, i32*, %struct.acpi_get_devices_info*, i8**) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
