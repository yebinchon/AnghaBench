; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_init_table_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_init_table_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_desc = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_table_header = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc* %0, i32 %1, i32 %2, %struct.acpi_table_header* %3) #0 {
  %5 = alloca %struct.acpi_table_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_desc* %0, %struct.acpi_table_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.acpi_table_header* %3, %struct.acpi_table_header** %8, align 8
  %9 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %10 = call i32 @memset(%struct.acpi_table_desc* %9, i32 0, i32 16)
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %15 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %27 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ACPI_MOVE_32_TO_32(i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @memset(%struct.acpi_table_desc*, i32, i32) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
