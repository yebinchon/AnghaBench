; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_calling_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_calling_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.acpi_walk_state*, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }

@acpi_gbl_current_walk_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"There is no method currently executing\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Current Control Method Call Tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"  [%4.4s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_display_calling_tree() #0 {
  %1 = alloca %struct.acpi_walk_state*, align 8
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = load i32, i32* @acpi_gbl_current_walk_list, align 4
  %4 = call %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(i32 %3)
  store %struct.acpi_walk_state* %4, %struct.acpi_walk_state** %1, align 8
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %1, align 8
  %6 = icmp ne %struct.acpi_walk_state* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %27

9:                                                ; preds = %0
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %1, align 8
  %11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 1
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  store %struct.acpi_namespace_node* %12, %struct.acpi_namespace_node** %2, align 8
  %13 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %17, %9
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %1, align 8
  %16 = icmp ne %struct.acpi_walk_state* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %1, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 1
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %19, align 8
  store %struct.acpi_namespace_node* %20, %struct.acpi_namespace_node** %2, align 8
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %22 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %21)
  %23 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %1, align 8
  %25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 0
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %25, align 8
  store %struct.acpi_walk_state* %26, %struct.acpi_walk_state** %1, align 8
  br label %14

27:                                               ; preds = %7, %14
  ret void
}

declare dso_local %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
