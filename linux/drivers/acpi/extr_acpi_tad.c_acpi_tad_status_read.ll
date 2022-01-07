; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_status_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_status_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_GWS\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @acpi_tad_status_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tad_status_read(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x %union.acpi_object], align 4
  %10 = alloca %struct.acpi_object_list, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @ACPI_HANDLE(%struct.device* %13)
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %9, i64 0, i64 0
  %16 = bitcast %union.acpi_object* %15 to i32*
  %17 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  %19 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %9, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(%union.acpi_object* %19)
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  %22 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %9, i64 0, i64 0
  store %union.acpi_object* %22, %union.acpi_object** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %9, i64 0, i64 0
  %25 = bitcast %union.acpi_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @pm_runtime_get_sync(%struct.device* %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @acpi_evaluate_integer(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %10, i64* %11)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @pm_runtime_put_sync(%struct.device* %31)
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%union.acpi_object*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
