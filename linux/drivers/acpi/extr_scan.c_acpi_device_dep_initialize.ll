; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_device_dep_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_device_dep_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i64, i32, i32 }
%struct.acpi_dep_data = type { i32, i32, i32 }
%struct.acpi_handle_list = type { i32, i32* }
%struct.acpi_device_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_DEP\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to evaluate _DEP.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error reading _DEP device info\0A\00", align 1
@ACPI_VALID_HID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"INT3396\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@acpi_dep_list_lock = common dso_local global i32 0, align 4
@acpi_dep_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*)* @acpi_device_dep_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_device_dep_initialize(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.acpi_dep_data*, align 8
  %4 = alloca %struct.acpi_handle_list, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_device_info*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @acpi_has_method(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %105

17:                                               ; preds = %1
  %18 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @acpi_evaluate_reference(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_handle_list* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 2
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %105

29:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %102, %29
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %4, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @acpi_get_object_info(i32 %41, %struct.acpi_device_info** %7)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 2
  %49 = call i32 @dev_dbg(i32* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %102

50:                                               ; preds = %35
  %51 = load %struct.acpi_device_info*, %struct.acpi_device_info** %7, align 8
  %52 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ACPI_VALID_HID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.acpi_device_info*, %struct.acpi_device_info** %7, align 8
  %59 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcmp(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %57, %50
  %66 = phi i1 [ false, %50 ], [ %64, %57 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load %struct.acpi_device_info*, %struct.acpi_device_info** %7, align 8
  %69 = call i32 @kfree(%struct.acpi_device_info* %68)
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %102

73:                                               ; preds = %65
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.acpi_dep_data* @kzalloc(i32 12, i32 %74)
  store %struct.acpi_dep_data* %75, %struct.acpi_dep_data** %3, align 8
  %76 = load %struct.acpi_dep_data*, %struct.acpi_dep_data** %3, align 8
  %77 = icmp ne %struct.acpi_dep_data* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %105

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %4, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.acpi_dep_data*, %struct.acpi_dep_data** %3, align 8
  %87 = getelementptr inbounds %struct.acpi_dep_data, %struct.acpi_dep_data* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %89 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.acpi_dep_data*, %struct.acpi_dep_data** %3, align 8
  %92 = getelementptr inbounds %struct.acpi_dep_data, %struct.acpi_dep_data* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %94 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = call i32 @mutex_lock(i32* @acpi_dep_list_lock)
  %98 = load %struct.acpi_dep_data*, %struct.acpi_dep_data** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_dep_data, %struct.acpi_dep_data* %98, i32 0, i32 0
  %100 = call i32 @list_add_tail(i32* %99, i32* @acpi_dep_list)
  %101 = call i32 @mutex_unlock(i32* @acpi_dep_list_lock)
  br label %102

102:                                              ; preds = %79, %72, %46
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %30

105:                                              ; preds = %16, %25, %78, %30
  ret void
}

declare dso_local i32 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @acpi_evaluate_reference(i32, i8*, i32*, %struct.acpi_handle_list*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @acpi_get_object_info(i32, %struct.acpi_device_info**) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @kfree(%struct.acpi_device_info*) #1

declare dso_local %struct.acpi_dep_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
