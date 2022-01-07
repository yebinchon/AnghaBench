; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_get_secondary_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_get_secondary_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ns_get_secondary_object = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %4 = load i32, i32* @ns_get_secondary_object, align 4
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %4, %union.acpi_operand_object* %5)
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %8 = icmp ne %union.acpi_operand_object* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %11 = bitcast %union.acpi_operand_object* %10 to %struct.TYPE_5__*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %9
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22, %16, %9, %1
  %33 = call i32 @return_PTR(%struct.TYPE_6__* null)
  br label %34

34:                                               ; preds = %32, %22
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @return_PTR(%struct.TYPE_6__* %38)
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  ret %union.acpi_operand_object* %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_PTR(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
