; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsparse.c_acpi_ns_parse_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsparse.c_acpi_ns_parse_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }

@ns_parse_table = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: **** Start table execution pass\0A\00", align 1
@ACPI_GET_FUNCTION_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_parse_table(i32 %0, %struct.acpi_namespace_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %5, align 8
  %7 = load i32, i32* @ns_parse_table, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load i32, i32* @ACPI_DB_PARSE, align 4
  %10 = load i32, i32* @ACPI_GET_FUNCTION_NAME, align 4
  %11 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %14 = call i32 @acpi_ns_execute_table(i32 %12, %struct.acpi_namespace_node* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ns_execute_table(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
