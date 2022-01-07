; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_extract_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_extract_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.acpi_device_data = type { i32 }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }

@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_object*, %struct.acpi_device_data*)* @acpi_extract_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_extract_properties(%union.acpi_object* %0, %struct.acpi_device_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %struct.acpi_device_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  store %union.acpi_object* %0, %union.acpi_object** %4, align 8
  store %struct.acpi_device_data* %1, %struct.acpi_device_data** %5, align 8
  %9 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %10 = bitcast %union.acpi_object* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = srem i32 %12, 2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %81, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %20 = bitcast %union.acpi_object* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %17
  %25 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %26 = bitcast %union.acpi_object* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %union.acpi_object*, %union.acpi_object** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %28, i64 %30
  store %union.acpi_object* %31, %union.acpi_object** %7, align 8
  %32 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %33 = bitcast %union.acpi_object* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %union.acpi_object*, %union.acpi_object** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %35, i64 %38
  store %union.acpi_object* %39, %union.acpi_object** %8, align 8
  %40 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %41 = bitcast %union.acpi_object* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %24
  %46 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 16
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %53 = bitcast %union.acpi_object* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45, %24
  br label %84

58:                                               ; preds = %51
  %59 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %60 = bitcast %union.acpi_object* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @acpi_is_property_guid(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %81

67:                                               ; preds = %58
  %68 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %69 = call i32 @acpi_properties_format_valid(%union.acpi_object* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %81

72:                                               ; preds = %67
  %73 = load %struct.acpi_device_data*, %struct.acpi_device_data** %5, align 8
  %74 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %75 = bitcast %union.acpi_object* %74 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %80 = call i32 @acpi_data_add_props(%struct.acpi_device_data* %73, i32* %78, %union.acpi_object* %79)
  br label %81

81:                                               ; preds = %72, %71, %66
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %6, align 4
  br label %17

84:                                               ; preds = %57, %17
  %85 = load %struct.acpi_device_data*, %struct.acpi_device_data** %5, align 8
  %86 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %85, i32 0, i32 0
  %87 = call i32 @list_empty(i32* %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %84, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @acpi_is_property_guid(i32*) #1

declare dso_local i32 @acpi_properties_format_valid(%union.acpi_object*) #1

declare dso_local i32 @acpi_data_add_props(%struct.acpi_device_data*, i32*, %union.acpi_object*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
