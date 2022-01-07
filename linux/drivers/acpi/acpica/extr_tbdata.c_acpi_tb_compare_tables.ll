; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_compare_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_compare_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.acpi_table_desc = type { i64, i32 }
%struct.acpi_table_header = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.acpi_table_desc*, i64)* @acpi_tb_compare_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_tb_compare_tables(%struct.acpi_table_desc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_table_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.acpi_table_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.acpi_table_desc* %0, %struct.acpi_table_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i32 @acpi_tb_acquire_table(i32* %14, %struct.acpi_table_header** %8, i64* %9, i64* %10)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %3, align 8
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @memcmp(i32 %30, %struct.acpi_table_header* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27, %21
  %36 = load i64, i64* @FALSE, align 8
  br label %39

37:                                               ; preds = %27
  %38 = load i64, i64* @TRUE, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %7, align 8
  %41 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @acpi_tb_release_table(%struct.acpi_table_header* %41, i64 %42, i64 %43)
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %39, %19
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i32 @acpi_tb_acquire_table(i32*, %struct.acpi_table_header**, i64*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @memcmp(i32, %struct.acpi_table_header*, i64) #1

declare dso_local i32 @acpi_tb_release_table(%struct.acpi_table_header*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
