; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_handle_dock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_handle_dock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dock_station = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"docking\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"undocking\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_DCK\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to execute _DCK (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dock_station*, i32)* @handle_dock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_dock(%struct.dock_station* %0, i32 %1) #0 {
  %3 = alloca %struct.dock_station*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_object_list, align 8
  %7 = alloca %union.acpi_object, align 4
  %8 = alloca i64, align 8
  store %struct.dock_station* %0, %struct.dock_station** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dock_station*, %struct.dock_station** %3, align 8
  %10 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @acpi_handle_info(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 1
  store %union.acpi_object* %7, %union.acpi_object** %18, align 8
  %19 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %20 = bitcast %union.acpi_object* %7 to i32*
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = bitcast %union.acpi_object* %7 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dock_station*, %struct.dock_station** %3, align 8
  %25 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @acpi_evaluate_integer(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_object_list* %6, i64* %8)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @ACPI_FAILURE(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @AE_NOT_FOUND, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.dock_station*, %struct.dock_station** %3, align 8
  %37 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @acpi_handle_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %35, %31, %2
  ret void
}

declare dso_local i32 @acpi_handle_info(i32, i8*, i8*) #1

declare dso_local i64 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @acpi_handle_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
