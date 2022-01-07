; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_object_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_info = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__, i32*, i32*, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Could not get object info, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ADR: %8.8X%8.8X, Flags: %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"S1D-%2.2X S2D-%2.2X S3D-%2.2X S4D-%2.2X\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"S0W-%2.2X S1W-%2.2X S2W-%2.2X S3W-%2.2X S4W-%2.2X\0A\00", align 1
@ACPI_VALID_HID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"HID: %s\0A\00", align 1
@ACPI_VALID_UID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"UID: %s\0A\00", align 1
@ACPI_VALID_CID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"CID %u: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_display_object_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strtoul(i8* %8, i32* null, i32 16)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ACPI_TO_POINTER(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @acpi_get_object_info(i32 %12, %struct.acpi_device_info** %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @acpi_format_exception(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %140

22:                                               ; preds = %1
  %23 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ACPI_FORMAT_UINT64(i32 %25)
  %27 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %26, i32 %29)
  %31 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %38 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %43 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %36, i32 %41, i32 %46, i32 %51)
  %53 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %60 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %65 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %70 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %75 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %58, i32 %63, i32 %68, i32 %73, i32 %78)
  %80 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %81 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ACPI_VALID_HID, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %22
  %87 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %88 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %86, %22
  %94 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %95 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ACPI_VALID_UID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %102 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %100, %93
  %108 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %109 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ACPI_VALID_CID, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %107
  store i64 0, i64* %7, align 8
  br label %115

115:                                              ; preds = %133, %114
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %118 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ult i64 %116, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %125 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %123, i32 %131)
  br label %133

133:                                              ; preds = %122
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %7, align 8
  br label %115

136:                                              ; preds = %115
  br label %137

137:                                              ; preds = %136, %107
  %138 = load %struct.acpi_device_info*, %struct.acpi_device_info** %5, align 8
  %139 = call i32 @ACPI_FREE(%struct.acpi_device_info* %138)
  br label %140

140:                                              ; preds = %137, %17
  ret void
}

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @ACPI_TO_POINTER(i32) #1

declare dso_local i32 @acpi_get_object_info(i32, %struct.acpi_device_info**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i64, ...) #1

declare dso_local i32 @acpi_format_exception(i32) #1

declare dso_local i64 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
