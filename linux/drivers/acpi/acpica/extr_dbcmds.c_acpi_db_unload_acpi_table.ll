; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_db_unload_acpi_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_db_unload_acpi_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type opaque

@acpi_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Parent of [%s] (%p) unloaded and uninstalled\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s, while unloading parent table of [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_unload_acpi_table(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @acpi_db_convert_to_node(i8* %5)
  %7 = bitcast i8* %6 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %7, %struct.acpi_namespace_node** %3, align 8
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %9 = icmp ne %struct.acpi_namespace_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* @acpi_handle, align 4
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %14 = bitcast %struct.acpi_namespace_node* %13 to i8*
  %15 = call i32 @ACPI_CAST_PTR(i32 %12, i8* %14)
  %16 = call i32 @acpi_unload_parent_table(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @ACPI_SUCCESS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load i8*, i8** %2, align 8
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %23 = bitcast %struct.acpi_namespace_node* %22 to i8*
  %24 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %23)
  br label %30

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @acpi_format_exception(i32 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %10, %25, %20
  ret void
}

declare dso_local i8* @acpi_db_convert_to_node(i8*) #1

declare dso_local i32 @acpi_unload_parent_table(i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, i8*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i8*, i8*) #1

declare dso_local i8* @acpi_format_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
