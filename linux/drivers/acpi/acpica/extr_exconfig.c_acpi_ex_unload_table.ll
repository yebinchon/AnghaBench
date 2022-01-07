; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exconfig.c_acpi_ex_unload_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exconfig.c_acpi_ex_unload_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_unload_table = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Received request to unload an ACPI table\00", align 1
@AE_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"AML Unload operator is not supported\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_unload_table(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %7 = load i32, i32* @AE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %5, align 8
  %9 = load i32, i32* @ex_unload_table, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load i32, i32* @AE_INFO, align 4
  %12 = call i32 @ACPI_WARNING(i32 ptrtoint ([41 x i8]* @.str to i32))
  %13 = load i32, i32* @AE_INFO, align 4
  %14 = load i32, i32* @AE_NOT_IMPLEMENTED, align 4
  %15 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([37 x i8]* @.str.1 to i32))
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %17 = icmp ne %union.acpi_operand_object* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %20 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %19)
  %21 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30, %23, %18, %1
  %39 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  %46 = call i32 (...) @acpi_ex_exit_interpreter()
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @acpi_tb_unload_table(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = call i32 (...) @acpi_ex_enter_interpreter()
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @ACPI_SUCCESS(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %55 = xor i32 %54, -1
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %53, %41
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @return_ACPI_STATUS(i32 %62)
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_tb_unload_table(i32) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
