; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbobject.c_acpi_db_dump_method_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbobject.c_acpi_db_dump_method_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { %struct.acpi_thread_state*, i64, %struct.acpi_namespace_node* }
%struct.acpi_thread_state = type { i32 }

@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@AE_CODE_MASK = common dso_local global i32 0, align 4
@AE_CODE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Executing subtree for Buffer/Package/Region\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_dump_method_info(i32 %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %struct.acpi_thread_state*, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %4, align 8
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 2
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  store %struct.acpi_namespace_node* %9, %struct.acpi_namespace_node** %6, align 8
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %12 = icmp eq %struct.acpi_namespace_node* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %43

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AE_CODE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @AE_CODE_CONTROL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 0
  %31 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %30, align 8
  store %struct.acpi_thread_state* %31, %struct.acpi_thread_state** %5, align 8
  %32 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %5, align 8
  %33 = icmp ne %struct.acpi_thread_state* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %28
  %36 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %38 = call i32 @acpi_db_decode_locals(%struct.acpi_walk_state* %37)
  %39 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %41 = call i32 @acpi_db_decode_arguments(%struct.acpi_walk_state* %40)
  %42 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %35, %34, %26, %20, %13
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*) #1

declare dso_local i32 @acpi_db_decode_locals(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_db_decode_arguments(%struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
