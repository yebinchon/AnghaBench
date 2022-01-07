; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbobject.c_acpi_db_decode_locals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbobject.c_acpi_db_decode_locals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64 }
%struct.acpi_walk_state = type { %struct.TYPE_2__*, %struct.acpi_namespace_node* }
%struct.TYPE_2__ = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"No method node (Executing subtree for buffer or opregion)\0A\00", align 1
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Executing subtree for Buffer/Package/Region\0A\00", align 1
@ACPI_METHOD_NUM_LOCALS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"\0AInitialized Local Variables for Method [%4.4s]:\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  Local%X: \00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"No Local Variables are initialized for Method [%4.4s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_decode_locals(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %2, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 1
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  store %struct.acpi_namespace_node* %10, %struct.acpi_namespace_node** %5, align 8
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %13 = icmp eq %struct.acpi_namespace_node* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %85

15:                                               ; preds = %1
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %17 = icmp ne %struct.acpi_namespace_node* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %85

20:                                               ; preds = %15
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %85

28:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @ACPI_METHOD_NUM_LOCALS, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %39, align 8
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %4, align 8
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %42 = icmp ne %union.acpi_operand_object* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %6, align 8
  br label %49

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %3, align 8
  br label %29

49:                                               ; preds = %43, %29
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  %53 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %54 = call i64 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %53)
  %55 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  store i64 0, i64* %3, align 8
  br label %56

56:                                               ; preds = %77, %52
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @ACPI_METHOD_NUM_LOCALS, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %62 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %66, align 8
  store %union.acpi_operand_object* %67, %union.acpi_operand_object** %4, align 8
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %69 = icmp ne %union.acpi_operand_object* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i64, i64* %3, align 8
  %72 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %75 = call i32 @acpi_db_display_internal_object(%union.acpi_operand_object* %73, %struct.acpi_walk_state* %74)
  br label %76

76:                                               ; preds = %70, %60
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %3, align 8
  br label %56

80:                                               ; preds = %56
  br label %85

81:                                               ; preds = %49
  %82 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %83 = call i64 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %82)
  %84 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %14, %18, %26, %81, %80
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i64 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_db_display_internal_object(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
