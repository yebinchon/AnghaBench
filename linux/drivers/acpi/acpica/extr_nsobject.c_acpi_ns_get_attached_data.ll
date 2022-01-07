; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_get_attached_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_get_attached_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %union.acpi_operand_object* }
%struct.TYPE_3__ = type { i64, i8* }

@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_get_attached_data(%struct.acpi_namespace_node* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %9, i32 0, i32 0
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %8, align 8
  br label %12

12:                                               ; preds = %36, %3
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %14 = icmp ne %union.acpi_operand_object* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @AE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %22, %15
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %38 = bitcast %union.acpi_operand_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %39, align 8
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %8, align 8
  br label %12

41:                                               ; preds = %12
  %42 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
