; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_dump_namespace_by_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_dump_namespace_by_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_root_node = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@ACPI_DB_DUPLICATE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ACPI Namespace by owner %X:\0A\00", align 1
@ACPI_DB_REDIRECTABLE_OUTPUT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_DISPLAY_SUMMARY = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_dump_namespace_by_owner(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @acpi_gbl_root_node, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strtoul(i8* %10, i32* null, i32 0)
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strtoul(i8* %15, i32* null, i32 0)
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @ACPI_DB_DUPLICATE_OUTPUT, align 4
  %19 = call i32 @acpi_db_set_output_destination(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @ACPI_DB_REDIRECTABLE_OUTPUT, align 4
  %23 = call i32 @acpi_db_set_output_destination(i32 %22)
  %24 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %25 = load i32, i32* @ACPI_DISPLAY_SUMMARY, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @acpi_ns_dump_objects(i32 %24, i32 %25, i64 %26, i64 %27, i32 %28)
  %30 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %31 = call i32 @acpi_db_set_output_destination(i32 %30)
  ret void
}

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @acpi_db_set_output_destination(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i64) #1

declare dso_local i32 @acpi_ns_dump_objects(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
