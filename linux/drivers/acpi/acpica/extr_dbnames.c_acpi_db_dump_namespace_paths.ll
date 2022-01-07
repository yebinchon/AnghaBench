; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_dump_namespace_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_dump_namespace_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_DB_DUPLICATE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ACPI Namespace (from root):\0A\00", align 1
@ACPI_DB_REDIRECTABLE_OUTPUT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_DISPLAY_SUMMARY = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_OWNER_ID_MAX = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_dump_namespace_paths() #0 {
  %1 = load i32, i32* @ACPI_DB_DUPLICATE_OUTPUT, align 4
  %2 = call i32 @acpi_db_set_output_destination(i32 %1)
  %3 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @ACPI_DB_REDIRECTABLE_OUTPUT, align 4
  %5 = call i32 @acpi_db_set_output_destination(i32 %4)
  %6 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %7 = load i32, i32* @ACPI_DISPLAY_SUMMARY, align 4
  %8 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %9 = load i32, i32* @ACPI_OWNER_ID_MAX, align 4
  %10 = load i32, i32* @acpi_gbl_root_node, align 4
  %11 = call i32 @acpi_ns_dump_object_paths(i32 %6, i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %13 = call i32 @acpi_db_set_output_destination(i32 %12)
  ret void
}

declare dso_local i32 @acpi_db_set_output_destination(i32) #1

declare dso_local i32 @acpi_os_printf(i8*) #1

declare dso_local i32 @acpi_ns_dump_object_paths(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
