; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_dump_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_dump_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@acpi_gbl_root_node = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_DB_DUPLICATE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ACPI Namespace (from %4.4s (%p) subtree):\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ACPI Namespace (from %s):\0A\00", align 1
@ACPI_NAMESPACE_ROOT = common dso_local global i32 0, align 4
@ACPI_DB_REDIRECTABLE_OUTPUT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_DISPLAY_SUMMARY = common dso_local global i32 0, align 4
@ACPI_OWNER_ID_MAX = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_dump_namespace(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* @acpi_gbl_root_node, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* @ACPI_UINT32_MAX, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @acpi_db_convert_to_node(i8* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %54

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strtoul(i8* %21, i32* null, i32 0)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* @ACPI_DB_DUPLICATE_OUTPUT, align 4
  %26 = call i32 @acpi_db_set_output_destination(i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = inttoptr i64 %27 to %struct.acpi_namespace_node*
  %29 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  %34 = inttoptr i64 %33 to %struct.acpi_namespace_node*
  %35 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 (i8*, i32, ...) @acpi_os_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38)
  br label %43

40:                                               ; preds = %24
  %41 = load i32, i32* @ACPI_NAMESPACE_ROOT, align 4
  %42 = call i32 (i8*, i32, ...) @acpi_os_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load i32, i32* @ACPI_DB_REDIRECTABLE_OUTPUT, align 4
  %45 = call i32 @acpi_db_set_output_destination(i32 %44)
  %46 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %47 = load i32, i32* @ACPI_DISPLAY_SUMMARY, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ACPI_OWNER_ID_MAX, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @acpi_ns_dump_objects(i32 %46, i32 %47, i32 %48, i32 %49, i64 %50)
  %52 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %53 = call i32 @acpi_db_set_output_destination(i32 %52)
  br label %54

54:                                               ; preds = %43, %16
  ret void
}

declare dso_local i64 @acpi_db_convert_to_node(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @acpi_db_set_output_destination(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i32, ...) #1

declare dso_local i32 @acpi_ns_dump_objects(i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
