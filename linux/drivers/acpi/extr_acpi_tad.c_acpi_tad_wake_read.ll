; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_wake_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_wake_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ACPI_TAD_WAKE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i8*, i64, i8*)* @acpi_tad_wake_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tad_wake_read(%struct.device* %0, i8* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [1 x %union.acpi_object], align 8
  %14 = alloca %struct.acpi_object_list, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call i32 @ACPI_HANDLE(%struct.device* %17)
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %13, i64 0, i64 0
  %20 = bitcast %union.acpi_object* %19 to i32*
  %21 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %14, i32 0, i32 0
  %23 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %13, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(%union.acpi_object* %23)
  store i32 %24, i32* %22, align 8
  %25 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %14, i32 0, i32 1
  %26 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %13, i64 0, i64 0
  store %union.acpi_object* %26, %union.acpi_object** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %13, i64 0, i64 0
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = call i32 @pm_runtime_get_sync(%struct.device* %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @acpi_evaluate_integer(i32 %33, i8* %34, %struct.acpi_object_list* %14, i64* %15)
  store i32 %35, i32* %16, align 4
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = call i32 @pm_runtime_put_sync(%struct.device* %36)
  %38 = load i32, i32* %16, align 4
  %39 = call i64 @ACPI_FAILURE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %57

44:                                               ; preds = %5
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @ACPI_TAD_WAKE_DISABLED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %51)
  store i32 %52, i32* %6, align 4
  br label %57

53:                                               ; preds = %44
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %48, %41
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%union.acpi_object*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
