; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dspkginit.c_acpi_ds_init_package_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dspkginit.c_acpi_ds_init_package_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%union.acpi_generic_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %union.acpi_operand_object** }
%struct.TYPE_4__ = type { i32 }

@ds_init_package_element = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_init_package_element(i32 %0, %union.acpi_operand_object* %1, %union.acpi_generic_state* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_generic_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %union.acpi_operand_object**, align 8
  store i32 %0, i32* %6, align 4
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store %union.acpi_generic_state* %2, %union.acpi_generic_state** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @ds_init_package_element, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %14 = icmp ne %union.acpi_operand_object* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @AE_OK, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %union.acpi_operand_object**
  store %union.acpi_operand_object** %23, %union.acpi_operand_object*** %10, align 8
  br label %29

24:                                               ; preds = %18
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %26 = bitcast %union.acpi_generic_state* %25 to %struct.TYPE_5__*
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %27, align 8
  store %union.acpi_operand_object** %28, %union.acpi_operand_object*** %10, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %10, align 8
  %38 = call i32 @acpi_ds_resolve_package_element(%union.acpi_operand_object** %37)
  br label %54

39:                                               ; preds = %29
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* @AE_OK, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_resolve_package_element(%union.acpi_operand_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
