; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_internal_object_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_internal_object_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %union.acpi_operand_object* }

@ut_create_internal_object_dbg = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_EXTRA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @ut_create_internal_object_dbg, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @acpi_ut_get_type_name(i32 %13)
  %15 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %12, i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %union.acpi_operand_object* @acpi_ut_allocate_object_desc_dbg(i8* %16, i32 %17, i32 %18)
  store %union.acpi_operand_object* %19, %union.acpi_operand_object** %10, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %21 = icmp ne %union.acpi_operand_object* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %24

24:                                               ; preds = %22, %4
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %26 = call i32 @kmemleak_not_leak(%union.acpi_operand_object* %25)
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %51 [
    i32 128, label %28
    i32 130, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %24, %24, %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call %union.acpi_operand_object* @acpi_ut_allocate_object_desc_dbg(i8* %29, i32 %30, i32 %31)
  store %union.acpi_operand_object* %32, %union.acpi_operand_object** %11, align 8
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %34 = icmp ne %union.acpi_operand_object* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %37 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %36)
  %38 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i64, i64* @ACPI_TYPE_LOCAL_EXTRA, align 8
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store %union.acpi_operand_object* %47, %union.acpi_operand_object** %50, align 8
  br label %52

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %62 = call i32 @return_PTR(%union.acpi_operand_object* %61)
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  ret %union.acpi_operand_object* %63
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_allocate_object_desc_dbg(i8*, i32, i32) #1

declare dso_local i32 @return_PTR(%union.acpi_operand_object*) #1

declare dso_local i32 @kmemleak_not_leak(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
