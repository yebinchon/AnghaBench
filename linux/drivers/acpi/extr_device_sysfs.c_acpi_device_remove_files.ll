; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c_acpi_device_remove_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c_acpi_device_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@dev_attr_power_state = common dso_local global i32 0, align 4
@dev_attr_real_power_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_STR\00", align 1
@dev_attr_description = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@dev_attr_eject = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1
@dev_attr_sun = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1
@dev_attr_hrv = common dso_local global i32 0, align 4
@dev_attr_uid = common dso_local global i32 0, align 4
@dev_attr_adr = common dso_local global i32 0, align 4
@dev_attr_modalias = common dso_local global i32 0, align 4
@dev_attr_hid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@dev_attr_status = common dso_local global i32 0, align 4
@dev_attr_path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_device_remove_files(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %3 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 5
  %5 = call i32 @acpi_hide_nondev_subnodes(i32* %4)
  %6 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 0
  %14 = call i32 @device_remove_file(i32* %13, i32* @dev_attr_power_state)
  %15 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 0
  %24 = call i32 @device_remove_file(i32* %23, i32* @dev_attr_real_power_state)
  br label %25

25:                                               ; preds = %21, %11
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @acpi_has_method(i64 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kfree(i32 %36)
  %38 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 0
  %40 = call i32 @device_remove_file(i32* %39, i32* @dev_attr_description)
  br label %41

41:                                               ; preds = %32, %26
  %42 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @acpi_has_method(i64 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 0
  %50 = call i32 @device_remove_file(i32* %49, i32* @dev_attr_eject)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %53 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @acpi_has_method(i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %59 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %58, i32 0, i32 0
  %60 = call i32 @device_remove_file(i32* %59, i32* @dev_attr_sun)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %63 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @acpi_has_method(i64 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %69 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %68, i32 0, i32 0
  %70 = call i32 @device_remove_file(i32* %69, i32* @dev_attr_hrv)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %73 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %79 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %78, i32 0, i32 0
  %80 = call i32 @device_remove_file(i32* %79, i32* @dev_attr_uid)
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %83 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 0
  %91 = call i32 @device_remove_file(i32* %90, i32* @dev_attr_adr)
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %94 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %93, i32 0, i32 0
  %95 = call i32 @device_remove_file(i32* %94, i32* @dev_attr_modalias)
  %96 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %97 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %96, i32 0, i32 0
  %98 = call i32 @device_remove_file(i32* %97, i32* @dev_attr_hid)
  %99 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %100 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @acpi_has_method(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %92
  %105 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %106 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %105, i32 0, i32 0
  %107 = call i32 @device_remove_file(i32* %106, i32* @dev_attr_status)
  br label %108

108:                                              ; preds = %104, %92
  %109 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %110 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %115 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %114, i32 0, i32 0
  %116 = call i32 @device_remove_file(i32* %115, i32* @dev_attr_path)
  br label %117

117:                                              ; preds = %113, %108
  ret void
}

declare dso_local i32 @acpi_hide_nondev_subnodes(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i64 @acpi_has_method(i64, i8*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
