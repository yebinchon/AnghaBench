; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exserial.c_acpi_ex_read_serial_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exserial.c_acpi_ex_read_serial_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ex_read_serial_bus = common dso_local global i32 0, align 4
@ACPI_SMBUS_BUFFER_SIZE = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@ACPI_IPMI_BUFFER_SIZE = common dso_local global i32 0, align 4
@AML_FIELD_ATTRIB_RAW_PROCESS_BYTES = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Invalid direct read using bidirectional write-then-read protocol\00", align 1
@AE_AML_PROTOCOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid protocol ID for GSBus: 0x%4.4X\00", align 1
@ACPI_SERIAL_HEADER_SIZE = common dso_local global i32 0, align 4
@AE_AML_INVALID_SPACE_ID = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@u64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_read_serial_bus(%union.acpi_operand_object* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %11 = load i32, i32* @ex_read_serial_bus, align 4
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_operand_object* %12)
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %15 = bitcast %union.acpi_operand_object* %14 to %struct.TYPE_8__*
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %66 [
    i32 128, label %21
    i32 129, label %30
    i32 130, label %33
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @ACPI_SMBUS_BUFFER_SIZE, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @ACPI_READ, align 4
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 16
  %29 = or i32 %23, %28
  store i32 %29, i32* %9, align 4
  br label %69

30:                                               ; preds = %2
  %31 = load i32, i32* @ACPI_IPMI_BUFFER_SIZE, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @ACPI_READ, align 4
  store i32 %32, i32* %9, align 4
  br label %69

33:                                               ; preds = %2
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_8__*
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @AML_FIELD_ATTRIB_RAW_PROCESS_BYTES, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i32, i32* @AE_INFO, align 4
  %43 = call i32 @ACPI_ERROR(i32 ptrtoint ([65 x i8]* @.str to i32))
  %44 = load i32, i32* @AE_AML_PROTOCOL, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @acpi_ex_get_protocol_buffer_length(i32 %47, i32* %7)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @AE_INFO, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ACPI_ERROR(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @ACPI_SERIAL_HEADER_SIZE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @ACPI_READ, align 4
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 16
  %65 = or i32 %62, %64
  store i32 %65, i32* %9, align 4
  br label %69

66:                                               ; preds = %2
  %67 = load i32, i32* @AE_AML_INVALID_SPACE_ID, align 4
  %68 = call i32 @return_ACPI_STATUS(i32 %67)
  br label %69

69:                                               ; preds = %66, %58, %30, %21
  %70 = load i32, i32* %7, align 4
  %71 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i32 %70)
  store %union.acpi_operand_object* %71, %union.acpi_operand_object** %8, align 8
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %73 = icmp ne %union.acpi_operand_object* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @AE_NO_MEMORY, align 4
  %76 = call i32 @return_ACPI_STATUS(i32 %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %79 = bitcast %union.acpi_operand_object* %78 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @acpi_ex_acquire_global_lock(i32 %81)
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %84 = load i32, i32* @u64, align 4
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_9__*
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ACPI_CAST_PTR(i32 %84, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %83, i32 0, i32 %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %93 = bitcast %union.acpi_operand_object* %92 to %struct.TYPE_10__*
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @acpi_ex_release_global_lock(i32 %95)
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %98 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* %97, %union.acpi_operand_object** %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @return_ACPI_STATUS(i32 %99)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_get_protocol_buffer_length(i32, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i32) #1

declare dso_local i32 @acpi_ex_acquire_global_lock(i32) #1

declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i32, i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, i32) #1

declare dso_local i32 @acpi_ex_release_global_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
