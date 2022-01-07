; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_init_one_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_init_one_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@acpi_ds_init_package_element = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_init_one_package(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %struct.acpi_namespace_node*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %14, %struct.acpi_namespace_node** %12, align 8
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %16 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %15)
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %11, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %18 = icmp ne %union.acpi_operand_object* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @AE_OK, align 4
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @AE_OK, align 4
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %21
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %33 = call i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @AE_OK, align 4
  store i32 %38, i32* %5, align 4
  br label %56

39:                                               ; preds = %31
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %41 = load i32, i32* @acpi_ds_init_package_element, align 4
  %42 = call i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object* %40, i32* null, i32 %41, i32* null)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @AE_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %56

48:                                               ; preds = %39
  %49 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %51 = bitcast %union.acpi_operand_object* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @AE_OK, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %48, %46, %37, %29, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
