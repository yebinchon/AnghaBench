; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_dump_parser_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_dump_parser_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_opcode_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Parser Op Descriptor:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%20.20s : %4.4X\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Opcode\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%20.20s : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Opcode Name\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%20.20s : %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Value/ArgList\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"NextOp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_parse_object*)* @acpi_db_dump_parser_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_db_dump_parser_descriptor(%union.acpi_parse_object* %0) #0 {
  %2 = alloca %union.acpi_parse_object*, align 8
  %3 = alloca %struct.acpi_opcode_info*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %2, align 8
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %5 = bitcast %union.acpi_parse_object* %4 to %struct.TYPE_3__*
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %7)
  store %struct.acpi_opcode_info* %8, %struct.acpi_opcode_info** %3, align 8
  %9 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %11 = bitcast %union.acpi_parse_object* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = call i32 @ACPI_DEBUG_ONLY_MEMBERS(i32 %18)
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %21 = bitcast %union.acpi_parse_object* %20 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %24)
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %27 = bitcast %union.acpi_parse_object* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %32 = bitcast %union.acpi_parse_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %34)
  ret void
}

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @ACPI_DEBUG_ONLY_MEMBERS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
