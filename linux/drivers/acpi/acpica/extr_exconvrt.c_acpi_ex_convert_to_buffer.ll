; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exconvrt.c_acpi_ex_convert_to_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exconvrt.c_acpi_ex_convert_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@ex_convert_to_buffer = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_integer_byte_width = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i32*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %8 = load i32, i32* @ex_convert_to_buffer, align 4
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %10 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %8, %union.acpi_operand_object* %9)
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %12 = bitcast %union.acpi_operand_object* %11 to %struct.TYPE_8__*
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %68 [
    i32 130, label %15
    i32 129, label %20
    i32 128, label %39
  ]

15:                                               ; preds = %2
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %17, align 8
  %18 = load i32, i32* @AE_OK, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %2, %15
  %21 = load i32, i32* @acpi_gbl_integer_byte_width, align 4
  %22 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i32 %21)
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %6, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = icmp ne %union.acpi_operand_object* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @AE_NO_MEMORY, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* @acpi_gbl_integer_byte_width, align 4
  %38 = call i32 @memcpy(i32* %33, i32* %36, i32 %37)
  br label %71

39:                                               ; preds = %2
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i32 %44)
  store %union.acpi_operand_object* %45, %union.acpi_operand_object** %6, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %47 = icmp ne %union.acpi_operand_object* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @AE_NO_MEMORY, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_7__*
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_7__*
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strncpy(i8* %57, i8* %62, i32 %66)
  br label %71

68:                                               ; preds = %2
  %69 = load i32, i32* @AE_TYPE, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  br label %71

71:                                               ; preds = %68, %51, %28
  %72 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %79 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* %78, %union.acpi_operand_object** %79, align 8
  %80 = load i32, i32* @AE_OK, align 4
  %81 = call i32 @return_ACPI_STATUS(i32 %80)
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
