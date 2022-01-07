; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdecode.c_acpi_ut_get_reference_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdecode.c_acpi_ut_get_reference_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"NULL Object\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Not an Operand object\00", align 1
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Not a Reference object\00", align 1
@ACPI_REFCLASS_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Unknown Reference class\00", align 1
@acpi_gbl_ref_class_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_ut_get_reference_name(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %5 = icmp ne %union.acpi_operand_object* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %37

7:                                                ; preds = %1
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %8)
  %10 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %37

13:                                               ; preds = %7
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %15 = bitcast %union.acpi_operand_object* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %37

21:                                               ; preds = %13
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_REFCLASS_MAX, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %37

29:                                               ; preds = %21
  %30 = load i8**, i8*** @acpi_gbl_ref_class_names, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8*, i8** %30, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %29, %28, %20, %12, %6
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
