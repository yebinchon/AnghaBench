; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_db_display_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_db_display_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ACPI_DB_REDIRECTABLE_OUTPUT = common dso_local global i32 0, align 4
@ACPI_LV_RESOURCES = common dso_local global i32 0, align 4
@acpi_dbg_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%4.4s: Name is not a device object (%s)\0A\00", align 1
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_display_resources(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @ACPI_DB_REDIRECTABLE_OUTPUT, align 4
  %5 = call i32 @acpi_db_set_output_destination(i32 %4)
  %6 = load i32, i32* @ACPI_LV_RESOURCES, align 4
  %7 = load i32, i32* @acpi_dbg_level, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @acpi_dbg_level, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11, %1
  %16 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %17 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %18 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %19 = call i32 @acpi_walk_namespace(i64 %16, i32 %17, i32 %18, i32 (%struct.acpi_namespace_node*, i32, i32*, i32*)* @acpi_db_device_resources, i32* null, i32* null, i32* null)
  br label %46

20:                                               ; preds = %11
  %21 = load i8*, i8** %2, align 8
  %22 = call %struct.acpi_namespace_node* @acpi_db_convert_to_node(i8* %21)
  store %struct.acpi_namespace_node* %22, %struct.acpi_namespace_node** %3, align 8
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %24 = icmp ne %struct.acpi_namespace_node* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @acpi_ut_get_type_name(i64 %38)
  %40 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39)
  br label %44

41:                                               ; preds = %25
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %43 = call i32 @acpi_db_device_resources(%struct.acpi_namespace_node* %42, i32 0, i32* null, i32* null)
  br label %44

44:                                               ; preds = %41, %31
  br label %45

45:                                               ; preds = %44, %20
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %48 = call i32 @acpi_db_set_output_destination(i32 %47)
  ret void
}

declare dso_local i32 @acpi_db_set_output_destination(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @acpi_walk_namespace(i64, i32, i32, i32 (%struct.acpi_namespace_node*, i32, i32*, i32*)*, i32*, i32*, i32*) #1

declare dso_local i32 @acpi_db_device_resources(%struct.acpi_namespace_node*, i32, i32*, i32*) #1

declare dso_local %struct.acpi_namespace_node* @acpi_db_convert_to_node(i8*) #1

declare dso_local i32 @acpi_os_printf(i8*, i32, i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
