; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_try_to_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_try_to_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.device = type { i32 }

@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@AE_SUPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Offline disabled.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Offline failed.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_scan_try_to_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_scan_try_to_offline(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  store %struct.device* null, %struct.device** %5, align 8
  %10 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %13 = bitcast %struct.device** %5 to i8**
  %14 = call i64 (i32, i32, i32, ...) @acpi_walk_namespace(i32 %10, i32 %11, i32 %12, i8* null, i32 (i32, i32, i8*, i8**)* @acpi_bus_offline, i8* null, i8** %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @AE_SUPPORT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_warn(%struct.device* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %24 = call i64 (i32, i32, i32, ...) @acpi_walk_namespace(i32 %21, i32 %22, i32 %23, i32 (i32, i32, i32*, i32*)* @acpi_bus_online, i8* null, i8* null, i8* null)
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %61

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = bitcast %struct.device** %5 to i8**
  %30 = call i32 @acpi_bus_offline(i32 %28, i32 0, i8* null, i8** %29)
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = icmp ne %struct.device* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  store %struct.device* null, %struct.device** %5, align 8
  %34 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %37 = bitcast %struct.device** %5 to i8**
  %38 = call i64 (i32, i32, i32, ...) @acpi_walk_namespace(i32 %34, i32 %35, i32 %36, i8* null, i32 (i32, i32, i8*, i8**)* @acpi_bus_offline, i8* inttoptr (i64 1 to i8*), i8** %37)
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = icmp ne %struct.device* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = bitcast %struct.device** %5 to i8**
  %44 = call i32 @acpi_bus_offline(i32 %42, i32 0, i8* inttoptr (i64 1 to i8*), i8** %43)
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = icmp ne %struct.device* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @acpi_bus_online(i32 %51, i32 0, i32* null, i32* null)
  %53 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %56 = call i64 (i32, i32, i32, ...) @acpi_walk_namespace(i32 %53, i32 %54, i32 %55, i32 (i32, i32, i32*, i32*)* @acpi_bus_online, i8* null, i8* null, i8* null)
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %27
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %48, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @acpi_walk_namespace(i32, i32, i32, ...) #1

declare dso_local i32 @acpi_bus_offline(i32, i32, i8*, i8**) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @acpi_bus_online(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
