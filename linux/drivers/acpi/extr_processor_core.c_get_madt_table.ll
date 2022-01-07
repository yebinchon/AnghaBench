; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_core.c_get_madt_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_core.c_get_madt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_madt = type { i32 }
%struct.acpi_table_header = type { i32 }

@get_madt_table.madt = internal global %struct.acpi_table_madt* null, align 8
@get_madt_table.read_madt = internal global i32 0, align 4
@ACPI_SIG_MADT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_table_madt* ()* @get_madt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_table_madt* @get_madt_table() #0 {
  %1 = load i32, i32* @get_madt_table.read_madt, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @ACPI_SIG_MADT, align 4
  %5 = call i32 @acpi_get_table(i32 %4, i32 0, %struct.acpi_table_header** bitcast (%struct.acpi_table_madt** @get_madt_table.madt to %struct.acpi_table_header**))
  %6 = call i64 @ACPI_FAILURE(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store %struct.acpi_table_madt* null, %struct.acpi_table_madt** @get_madt_table.madt, align 8
  br label %9

9:                                                ; preds = %8, %3
  %10 = load i32, i32* @get_madt_table.read_madt, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @get_madt_table.read_madt, align 4
  br label %12

12:                                               ; preds = %9, %0
  %13 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** @get_madt_table.madt, align 8
  ret %struct.acpi_table_madt* %13
}

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
