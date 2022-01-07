; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_data_prop_read_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_data_prop_read_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_data = type { i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEV_PROP_U64 = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@DEV_PROP_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device_data*, i8*, i32, i8*)* @acpi_data_prop_read_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_data_prop_read_single(%struct.acpi_device_data* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_device_data* %0, %struct.acpi_device_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %120

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp uge i32 %18, 128
  br i1 %19, label %20, label %94

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DEV_PROP_U64, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %94

24:                                               ; preds = %20
  %25 = load %struct.acpi_device_data*, %struct.acpi_device_data** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %28 = call i32 @acpi_data_get_property(%struct.acpi_device_data* %25, i8* %26, i32 %27, %union.acpi_object** %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %120

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %86 [
    i32 128, label %35
    i32 130, label %52
    i32 129, label %69
  ]

35:                                               ; preds = %33
  %36 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @U8_MAX, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EOVERFLOW, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %120

45:                                               ; preds = %35
  %46 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %93

52:                                               ; preds = %33
  %53 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %54 = bitcast %union.acpi_object* %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @U16_MAX, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EOVERFLOW, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %120

62:                                               ; preds = %52
  %63 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = bitcast i8* %67 to i32*
  store i32 %66, i32* %68, align 4
  br label %93

69:                                               ; preds = %33
  %70 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %71 = bitcast %union.acpi_object* %70 to %struct.TYPE_3__*
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @U32_MAX, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EOVERFLOW, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %120

79:                                               ; preds = %69
  %80 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %81 = bitcast %union.acpi_object* %80 to %struct.TYPE_3__*
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = bitcast i8* %84 to i32*
  store i32 %83, i32* %85, align 4
  br label %93

86:                                               ; preds = %33
  %87 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %88 = bitcast %union.acpi_object* %87 to %struct.TYPE_3__*
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = bitcast i8* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %79, %62, %45
  br label %118

94:                                               ; preds = %20, %17
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @DEV_PROP_STRING, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load %struct.acpi_device_data*, %struct.acpi_device_data** %6, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %102 = call i32 @acpi_data_get_property(%struct.acpi_device_data* %99, i8* %100, i32 %101, %union.acpi_object** %10)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %5, align 4
  br label %120

107:                                              ; preds = %98
  %108 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %109 = bitcast %union.acpi_object* %108 to %struct.TYPE_4__*
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = bitcast i8* %112 to i8**
  store i8* %111, i8** %113, align 8
  store i32 1, i32* %5, align 4
  br label %120

114:                                              ; preds = %94
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117, %93
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %107, %105, %76, %59, %42, %31, %14
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @acpi_data_get_property(%struct.acpi_device_data*, i8*, i32, %union.acpi_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
