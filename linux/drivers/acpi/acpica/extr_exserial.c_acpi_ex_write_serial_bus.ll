; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exserial.c_acpi_ex_write_serial_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exserial.c_acpi_ex_write_serial_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i8* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ex_write_serial_bus = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"SMBus/IPMI/GenericSerialBus write requires Buffer, found type %s\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_SMBUS_BUFFER_SIZE = common dso_local global i64 0, align 8
@ACPI_WRITE = common dso_local global i32 0, align 4
@ACPI_IPMI_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid protocol ID for GSBus: 0x%4.4X\00", align 1
@ACPI_SERIAL_HEADER_SIZE = common dso_local global i32 0, align 4
@AE_AML_INVALID_SPACE_ID = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_write_serial_bus(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %7, align 8
  %15 = load i32, i32* @ex_write_serial_bus, align 4
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %15, %union.acpi_operand_object* %16)
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_7__*
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %27 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %26)
  %28 = call i32 @ACPI_ERROR(i32 %27)
  %29 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %30 = call i32 @return_ACPI_STATUS(i32 %29)
  br label %31

31:                                               ; preds = %24, %3
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_10__*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %79 [
    i32 128, label %39
    i32 129, label %49
    i32 130, label %53
  ]

39:                                               ; preds = %31
  %40 = load i64, i64* @ACPI_SMBUS_BUFFER_SIZE, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* @ACPI_WRITE, align 4
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 16
  %47 = or i32 %41, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %13, align 8
  br label %82

49:                                               ; preds = %31
  %50 = load i64, i64* @ACPI_IPMI_BUFFER_SIZE, align 8
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* @ACPI_WRITE, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %13, align 8
  br label %82

53:                                               ; preds = %31
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @acpi_ex_get_protocol_buffer_length(i32 %58, i64* %9)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ACPI_FAILURE(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i32, i32* @AE_INFO, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ACPI_ERROR(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @return_ACPI_STATUS(i32 %67)
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i32, i32* @ACPI_SERIAL_HEADER_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %9, align 8
  %74 = load i32, i32* @ACPI_WRITE, align 4
  %75 = load i32, i32* %14, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %74, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %13, align 8
  br label %82

79:                                               ; preds = %31
  %80 = load i32, i32* @AE_AML_INVALID_SPACE_ID, align 4
  %81 = call i32 @return_ACPI_STATUS(i32 %80)
  br label %82

82:                                               ; preds = %79, %69, %49, %39
  %83 = load i64, i64* %9, align 8
  %84 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %83)
  store %union.acpi_operand_object* %84, %union.acpi_operand_object** %12, align 8
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %86 = icmp ne %union.acpi_operand_object* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @AE_NO_MEMORY, align 4
  %89 = call i32 @return_ACPI_STATUS(i32 %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %92 = bitcast %union.acpi_operand_object* %91 to %struct.TYPE_11__*
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %11, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %97 = bitcast %union.acpi_operand_object* %96 to %struct.TYPE_11__*
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %95, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i64, i64* %9, align 8
  br label %108

103:                                              ; preds = %90
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_11__*
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  br label %108

108:                                              ; preds = %103, %101
  %109 = phi i64 [ %102, %101 ], [ %107, %103 ]
  store i64 %109, i64* %10, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %112 = bitcast %union.acpi_operand_object* %111 to %struct.TYPE_11__*
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @memcpy(i8* %110, i8* %114, i64 %115)
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %118 = bitcast %union.acpi_operand_object* %117 to %struct.TYPE_12__*
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @acpi_ex_acquire_global_lock(i32 %120)
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = load i64, i64* %13, align 8
  %126 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %122, i32 0, i32* %124, i64 %125)
  store i32 %126, i32* %8, align 4
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %128 = bitcast %union.acpi_operand_object* %127 to %struct.TYPE_12__*
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @acpi_ex_release_global_lock(i32 %130)
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %133 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object* %132, %union.acpi_operand_object** %133, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @return_ACPI_STATUS(i32 %134)
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_get_protocol_buffer_length(i32, i64*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @acpi_ex_acquire_global_lock(i32) #1

declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i32*, i64) #1

declare dso_local i32 @acpi_ex_release_global_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
