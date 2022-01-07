; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_wrap_with_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_wrap_with_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_operand_object** }

@ns_wrap_with_package = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: Wrapped %s with expected Package object\0A\00", align 1
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4
@ACPI_OBJECT_WRAPPED = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_wrap_with_package(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_evaluate_info*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %7, align 8
  %9 = load i32, i32* @ns_wrap_with_package, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = call %union.acpi_operand_object* @acpi_ut_create_package_object(i32 1)
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %8, align 8
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %20, align 8
  %22 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %21, i64 0
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %22, align 8
  %23 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %24 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %28 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %27)
  %29 = call i32 @ACPI_DEBUG_PRINT(i32 %28)
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %31 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %31, align 8
  %32 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %33 = load i32, i32* @ACPI_OBJECT_WRAPPED, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @AE_OK, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %16, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_package_object(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
