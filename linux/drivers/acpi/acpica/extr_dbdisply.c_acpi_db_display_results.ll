; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_results.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object* }
%union.acpi_generic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_generic_state*, %union.acpi_operand_object** }
%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { i32 }

@acpi_gbl_current_walk_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"There is no method currently executing\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Method [%4.4s] has %X stacked result objects\0A\00", align 1
@ACPI_RESULTS_FRAME_OBJ_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Result%u: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_display_results() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca %union.acpi_generic_state*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @acpi_gbl_current_walk_list, align 4
  %9 = call %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(i32 %8)
  store %struct.acpi_walk_state* %9, %struct.acpi_walk_state** %2, align 8
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %11 = icmp ne %struct.acpi_walk_state* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %73

14:                                               ; preds = %0
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 3
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %3, align 8
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 2
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %19, align 8
  store %struct.acpi_namespace_node* %20, %struct.acpi_namespace_node** %5, align 8
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 1
  %23 = load %union.acpi_generic_state*, %union.acpi_generic_state** %22, align 8
  %24 = icmp ne %union.acpi_generic_state* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %31 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 1
  %36 = load %union.acpi_generic_state*, %union.acpi_generic_state** %35, align 8
  store %union.acpi_generic_state* %36, %union.acpi_generic_state** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @ACPI_RESULTS_FRAME_OBJ_NUM, align 4
  %40 = srem i32 %38, %39
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %70, %29
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %47 = bitcast %union.acpi_generic_state* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %49, i64 %51
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %52, align 8
  store %union.acpi_operand_object* %53, %union.acpi_operand_object** %3, align 8
  %54 = load i32, i32* %1, align 4
  %55 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %58 = call i32 @acpi_db_display_internal_object(%union.acpi_operand_object* %56, %struct.acpi_walk_state* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %45
  %62 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %63 = bitcast %union.acpi_generic_state* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %union.acpi_generic_state*, %union.acpi_generic_state** %64, align 8
  store %union.acpi_generic_state* %65, %union.acpi_generic_state** %6, align 8
  %66 = load i32, i32* @ACPI_RESULTS_FRAME_OBJ_NUM, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %45
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %41

73:                                               ; preds = %12, %41
  ret void
}

declare dso_local %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_db_display_internal_object(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
