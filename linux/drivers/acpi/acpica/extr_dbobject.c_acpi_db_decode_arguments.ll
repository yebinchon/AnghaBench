; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbobject.c_acpi_db_decode_arguments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbobject.c_acpi_db_decode_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_walk_state = type { %struct.TYPE_6__*, %union.acpi_operand_object*, %struct.acpi_namespace_node* }
%struct.TYPE_6__ = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"No method node (Executing subtree for buffer or opregion)\0A\00", align 1
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Executing subtree for Buffer/Package/Region\0A\00", align 1
@ACPI_METHOD_NUM_ARGS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [89 x i8] c"Initialized Arguments for Method [%4.4s]:  (%X arguments defined for method invocation)\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  Arg%u:   \00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"No Arguments are initialized for method [%4.4s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_decode_arguments(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %2, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 2
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  store %struct.acpi_namespace_node* %10, %struct.acpi_namespace_node** %5, align 8
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 1
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %4, align 8
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %16 = icmp eq %struct.acpi_namespace_node* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %94

18:                                               ; preds = %1
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %20 = icmp ne %struct.acpi_namespace_node* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %94

23:                                               ; preds = %18
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %94

31:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @ACPI_METHOD_NUM_ARGS, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %42, align 8
  store %union.acpi_operand_object* %43, %union.acpi_operand_object** %4, align 8
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %45 = icmp ne %union.acpi_operand_object* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %6, align 8
  br label %52

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %32

52:                                               ; preds = %46, %32
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %52
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %57 = call i64 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %56)
  %58 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i64 %57, i32 %63)
  store i64 0, i64* %3, align 8
  br label %65

65:                                               ; preds = %86, %55
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @ACPI_METHOD_NUM_ARGS, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %71 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %75, align 8
  store %union.acpi_operand_object* %76, %union.acpi_operand_object** %4, align 8
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %78 = icmp ne %union.acpi_operand_object* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load i64, i64* %3, align 8
  %81 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %84 = call i32 @acpi_db_display_internal_object(%union.acpi_operand_object* %82, %struct.acpi_walk_state* %83)
  br label %85

85:                                               ; preds = %79, %69
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %3, align 8
  br label %65

89:                                               ; preds = %65
  br label %94

90:                                               ; preds = %52
  %91 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %92 = call i64 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %91)
  %93 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %17, %21, %29, %90, %89
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
