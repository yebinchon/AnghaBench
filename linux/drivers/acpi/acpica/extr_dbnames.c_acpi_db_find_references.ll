; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_find_references.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_find_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }

@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@acpi_db_walk_for_references = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_find_references(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strtoul(i8* %5, i32* null, i32 16)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %union.acpi_operand_object* @ACPI_TO_POINTER(i32 %7)
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %3, align 8
  %9 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %10 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %11 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %12 = load i32, i32* @acpi_db_walk_for_references, align 4
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %14 = bitcast %union.acpi_operand_object* %13 to i8*
  %15 = call i32 @acpi_walk_namespace(i32 %9, i32 %10, i32 %11, i32 %12, i32* null, i8* %14, i32* null)
  ret void
}

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local %union.acpi_operand_object* @ACPI_TO_POINTER(i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
