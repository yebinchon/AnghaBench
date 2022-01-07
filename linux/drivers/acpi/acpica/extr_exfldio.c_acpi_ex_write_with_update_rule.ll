; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_write_with_update_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_write_with_update_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_write_with_update_rule = common dso_local global i32 0, align 4
@ACPI_UINT64_MAX = common dso_local global i64 0, align 8
@AML_FIELD_UPDATE_RULE_MASK = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown UpdateRule value: 0x%X\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Mask %8.8X%8.8X, DatumOffset %X, Width %X, Value %8.8X%8.8X, MergedValue %8.8X%8.8X\0A\00", align 1
@ACPI_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_write_with_update_rule(%union.acpi_operand_object* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @ex_write_with_update_rule, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %14, i64 %15)
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @ACPI_UINT64_MAX, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %80

21:                                               ; preds = %4
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AML_FIELD_UPDATE_RULE_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %68 [
    i32 130, label %28
    i32 129, label %59
    i32 128, label %64
  ]

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = xor i64 %29, -1
  %31 = call i64 @ACPI_MUL_8(i32 8)
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ACPI_MUL_8(i32 %35)
  %37 = sub nsw i64 %31, %36
  %38 = shl i64 %30, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %28
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ACPI_READ, align 4
  %44 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %41, i32 %42, i64* %12, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %7, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = load i64, i64* %11, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %51, %28
  br label %79

59:                                               ; preds = %21
  %60 = load i64, i64* %7, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %11, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %11, align 8
  br label %79

64:                                               ; preds = %21
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %11, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %11, align 8
  br label %79

68:                                               ; preds = %21
  %69 = load i32, i32* @AE_INFO, align 4
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AML_FIELD_UPDATE_RULE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @ACPI_ERROR(i32 %75)
  %77 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  %78 = call i32 @return_ACPI_STATUS(i32 %77)
  br label %79

79:                                               ; preds = %68, %64, %59, %58
  br label %80

80:                                               ; preds = %79, %4
  %81 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @ACPI_FORMAT_UINT64(i64 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @ACPI_FORMAT_UINT64(i64 %89)
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @ACPI_FORMAT_UINT64(i64 %91)
  %93 = call i32 @ACPI_DEBUG_PRINT(i32 %92)
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @ACPI_WRITE, align 4
  %97 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %94, i32 %95, i64* %11, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @return_ACPI_STATUS(i32 %98)
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local i64 @ACPI_MUL_8(i32) #1

declare dso_local i32 @acpi_ex_field_datum_io(%union.acpi_operand_object*, i32, i64*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
