; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbmethod.c_acpi_db_set_method_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbmethod.c_acpi_db_set_method_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.acpi_parse_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"There is no method currently executing\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Breakpoint %X is beyond current address %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Breakpoint set at AML offset %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_set_method_breakpoint(i8* %0, %struct.acpi_walk_state* %1, %union.acpi_parse_object* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %6, align 8
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %10 = icmp ne %union.acpi_parse_object* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %38

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strtoul(i8* %14, i32* null, i32 16)
  store i64 %15, i64* %7, align 8
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %17 = bitcast %union.acpi_parse_object* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @ACPI_PTR_DIFF(i32 %19, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %13
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %32, %11
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @ACPI_PTR_DIFF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
