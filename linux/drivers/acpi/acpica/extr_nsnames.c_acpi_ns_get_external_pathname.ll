; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_get_external_pathname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_get_external_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }

@ns_get_external_pathname = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_ns_get_external_pathname(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca i8*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  %5 = load i32, i32* @ns_get_external_pathname, align 4
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %7 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %5, %struct.acpi_namespace_node* %6)
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %8, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @return_PTR(i8* %11)
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i32) #1

declare dso_local i32 @return_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
