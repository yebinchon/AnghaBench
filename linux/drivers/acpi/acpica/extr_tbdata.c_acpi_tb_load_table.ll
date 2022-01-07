; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_load_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_load_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_table_header = type { i32 }

@tb_load_table = common dso_local global i32 0, align 4
@ACPI_TABLE_EVENT_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_tb_load_table(i32 %0, %struct.acpi_namespace_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca %struct.acpi_table_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %5, align 8
  %9 = load i32, i32* @tb_load_table, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @acpi_get_table_by_index(i32 %11, %struct.acpi_table_header** %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %22 = call i32 @acpi_ns_load_table(i32 %20, %struct.acpi_namespace_node* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @acpi_tb_get_owner_id(i32 %23, i32* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @ACPI_SUCCESS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @acpi_ev_update_gpes(i32 %29)
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i32, i32* @ACPI_TABLE_EVENT_LOAD, align 4
  %33 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %34 = call i32 @acpi_tb_notify_table(i32 %32, %struct.acpi_table_header* %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ns_load_table(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_tb_get_owner_id(i32, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ev_update_gpes(i32) #1

declare dso_local i32 @acpi_tb_notify_table(i32, %struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
