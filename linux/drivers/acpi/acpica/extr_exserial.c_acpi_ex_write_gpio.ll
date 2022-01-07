; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exserial.c_acpi_ex_write_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exserial.c_acpi_ex_write_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@ex_write_gpio = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"GPIO FieldWrite [FROM]: (%s:%X), Value %.8X  [TO]: Pin %u Bits %u\0A\00", align 1
@ACPI_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_write_gpio(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %7, align 8
  %10 = load i32, i32* @ex_write_gpio, align 4
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %union.acpi_operand_object* %11)
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %14 = bitcast %union.acpi_operand_object* %13 to %struct.TYPE_5__*
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @acpi_ut_get_type_name(i64 %27)
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ACPI_DEBUG_PRINT(i32 %45)
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_7__*
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = bitcast i64* %49 to i8*
  store i8* %50, i8** %9, align 8
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @acpi_ex_acquire_global_lock(i32 %54)
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* @ACPI_WRITE, align 4
  %60 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %56, i32 0, i32* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_8__*
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @acpi_ex_release_global_lock(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @return_ACPI_STATUS(i32 %66)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i64) #1

declare dso_local i32 @acpi_ex_acquire_global_lock(i32) #1

declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i32*, i32) #1

declare dso_local i32 @acpi_ex_release_global_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
