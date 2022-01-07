; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_reference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ACPI_REFCLASS_NAME = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Return type mismatch - unexpected reference object type [%s] %2.2X\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object*)* @acpi_ns_check_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_check_reference(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_evaluate_info*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %7 = bitcast %union.acpi_operand_object* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ACPI_REFCLASS_NAME, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* @AE_INFO, align 4
  %16 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %23 = call i32 @acpi_ut_get_reference_name(%union.acpi_operand_object* %22)
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @ACPI_WARN_PREDEFINED(i32 %28)
  %30 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %14, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i32 @acpi_ut_get_reference_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
