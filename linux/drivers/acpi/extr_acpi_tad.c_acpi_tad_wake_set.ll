; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_wake_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_wake_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i8*, i8*)* @acpi_tad_wake_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tad_wake_set(%struct.device* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x %union.acpi_object], align 16
  %12 = alloca %struct.acpi_object_list, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call i32 @ACPI_HANDLE(%struct.device* %15)
  store i32 %16, i32* %10, align 4
  %17 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 0
  %18 = bitcast %union.acpi_object* %17 to i32*
  %19 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %17, i64 1
  %21 = bitcast %union.acpi_object* %20 to i32*
  %22 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 0
  %24 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(%union.acpi_object* %24)
  store i32 %25, i32* %23, align 8
  %26 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 1
  %27 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 0
  store %union.acpi_object* %27, %union.acpi_object** %26, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 0
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 16
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 1
  %34 = bitcast %union.acpi_object* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @pm_runtime_get_sync(%struct.device* %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @acpi_evaluate_integer(i32 %38, i8* %39, %struct.acpi_object_list* %12, i64* %13)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @pm_runtime_put_sync(%struct.device* %41)
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %4
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %4
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%union.acpi_object*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
