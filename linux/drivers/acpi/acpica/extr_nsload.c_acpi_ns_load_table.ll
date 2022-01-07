; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsload.c_acpi_ns_load_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsload.c_acpi_ns_load_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }

@ns_load_table = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"**** Loading table into namespace ****\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"**** Begin Table Object Initialization\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"**** Completed Table Object Initialization\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_load_table(i64 %0, %struct.acpi_namespace_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %5, align 8
  %7 = load i32, i32* @ns_load_table, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @acpi_tb_is_table_loaded(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %13, i32* %6, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* @ACPI_DB_INFO, align 4
  %16 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([40 x i8]* @.str to i32))
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @acpi_tb_allocate_owner_id(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %46

23:                                               ; preds = %14
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %26 = call i32 @acpi_ns_parse_table(i64 %24, %struct.acpi_namespace_node* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @ACPI_SUCCESS(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @acpi_tb_set_table_loaded_flag(i64 %31, i32 %32)
  br label %45

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @acpi_ns_delete_namespace_by_owner(i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @acpi_tb_release_owner_id(i64 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @return_ACPI_STATUS(i32 %43)
  br label %45

45:                                               ; preds = %34, %30
  br label %46

46:                                               ; preds = %45, %22, %12
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* @ACPI_DB_INFO, align 4
  %55 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([40 x i8]* @.str.1 to i32))
  %56 = call i32 (...) @acpi_ex_enter_interpreter()
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %59 = call i32 @acpi_ds_initialize_objects(i64 %57, %struct.acpi_namespace_node* %58)
  store i32 %59, i32* %6, align 4
  %60 = call i32 (...) @acpi_ex_exit_interpreter()
  %61 = load i32, i32* @ACPI_DB_INFO, align 4
  %62 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([44 x i8]* @.str.2 to i32))
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @return_ACPI_STATUS(i32 %63)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_tb_is_table_loaded(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_tb_allocate_owner_id(i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_parse_table(i64, %struct.acpi_namespace_node*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_tb_set_table_loaded_flag(i64, i32) #1

declare dso_local i32 @acpi_ns_delete_namespace_by_owner(i32) #1

declare dso_local i32 @acpi_tb_release_owner_id(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i32 @acpi_ds_initialize_objects(i64, %struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
