; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_hot_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_hot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Hot-removing device %s...\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Status check after eject failed (0x%x)\0A\00", align 1
@ACPI_STA_DEVICE_ENABLED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Eject incomplete - status 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_scan_hot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_scan_hot_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = call i32 @acpi_scan_is_offline(%struct.acpi_device* %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %86

30:                                               ; preds = %23
  br label %39

31:                                               ; preds = %15, %1
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = call i32 @acpi_scan_try_to_offline(%struct.acpi_device* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %86

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, i32* @ACPI_DB_INFO, align 4
  %41 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %41, i32 0, i32 0
  %43 = call i32 @dev_name(i32* %42)
  %44 = call i32 @ACPI_DEBUG_PRINT(i32 %43)
  %45 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %46 = call i32 @acpi_bus_trim(%struct.acpi_device* %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @acpi_evaluate_lck(i32 %47, i32 0)
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @acpi_evaluate_ej0(i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @AE_NOT_FOUND, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %86

57:                                               ; preds = %39
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @ACPI_FAILURE(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %86

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @acpi_evaluate_integer(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i64* %5)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @ACPI_FAILURE(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @acpi_handle_warn(i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %85

75:                                               ; preds = %65
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @ACPI_STA_DEVICE_ENABLED, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @acpi_handle_warn(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84, %71
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %61, %54, %36, %27
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @acpi_scan_is_offline(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_scan_try_to_offline(%struct.acpi_device*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @acpi_bus_trim(%struct.acpi_device*) #1

declare dso_local i32 @acpi_evaluate_lck(i32, i32) #1

declare dso_local i64 @acpi_evaluate_ej0(i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i64 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i32 @acpi_handle_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
