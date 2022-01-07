; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rsdump.c_acpi_rs_dump_address_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rsdump.c_acpi_rs_dump_address_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_resource_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@acpi_rs_dump_memory_flags = common dso_local global i32 0, align 4
@acpi_rs_dump_io_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Resource Type\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Bus Number Range\00", align 1
@acpi_rs_dump_general_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_resource_data*)* @acpi_rs_dump_address_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_rs_dump_address_common(%union.acpi_resource_data* %0) #0 {
  %2 = alloca %union.acpi_resource_data*, align 8
  store %union.acpi_resource_data* %0, %union.acpi_resource_data** %2, align 8
  %3 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %4 = load %union.acpi_resource_data*, %union.acpi_resource_data** %2, align 8
  %5 = bitcast %union.acpi_resource_data* %4 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %18 [
    i32 128, label %8
    i32 129, label %12
    i32 130, label %16
  ]

8:                                                ; preds = %1
  %9 = load %union.acpi_resource_data*, %union.acpi_resource_data** %2, align 8
  %10 = load i32, i32* @acpi_rs_dump_memory_flags, align 4
  %11 = call i32 @acpi_rs_dump_descriptor(%union.acpi_resource_data* %9, i32 %10)
  br label %24

12:                                               ; preds = %1
  %13 = load %union.acpi_resource_data*, %union.acpi_resource_data** %2, align 8
  %14 = load i32, i32* @acpi_rs_dump_io_flags, align 4
  %15 = call i32 @acpi_rs_dump_descriptor(%union.acpi_resource_data* %13, i32 %14)
  br label %24

16:                                               ; preds = %1
  %17 = call i32 @acpi_rs_out_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %24

18:                                               ; preds = %1
  %19 = load %union.acpi_resource_data*, %union.acpi_resource_data** %2, align 8
  %20 = bitcast %union.acpi_resource_data* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @acpi_rs_out_integer8(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %16, %12, %8
  %25 = load %union.acpi_resource_data*, %union.acpi_resource_data** %2, align 8
  %26 = load i32, i32* @acpi_rs_dump_general_flags, align 4
  %27 = call i32 @acpi_rs_dump_descriptor(%union.acpi_resource_data* %25, i32 %26)
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_rs_dump_descriptor(%union.acpi_resource_data*, i32) #1

declare dso_local i32 @acpi_rs_out_string(i8*, i8*) #1

declare dso_local i32 @acpi_rs_out_integer8(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
