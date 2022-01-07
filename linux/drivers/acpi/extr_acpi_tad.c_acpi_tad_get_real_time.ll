; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_get_real_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_get_real_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_tad_rt = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_GRT\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.acpi_tad_rt*)* @acpi_tad_get_real_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tad_get_real_time(%struct.device* %0, %struct.acpi_tad_rt* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_tad_rt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.acpi_tad_rt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.acpi_tad_rt* %1, %struct.acpi_tad_rt** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @ACPI_HANDLE(%struct.device* %11)
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %14 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %union.acpi_object*
  store %union.acpi_object* %16, %union.acpi_object** %13, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @pm_runtime_get_sync(%struct.device* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @acpi_evaluate_object(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @pm_runtime_put_sync(%struct.device* %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %62

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %32 = load %union.acpi_object*, %union.acpi_object** %31, align 8
  store %union.acpi_object* %32, %union.acpi_object** %7, align 8
  %33 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %34 = bitcast %union.acpi_object* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %62

39:                                               ; preds = %30
  %40 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %41 = bitcast %union.acpi_object* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %62

47:                                               ; preds = %39
  %48 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.acpi_tad_rt*
  store %struct.acpi_tad_rt* %52, %struct.acpi_tad_rt** %8, align 8
  %53 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %8, align 8
  %54 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %4, align 8
  %60 = load %struct.acpi_tad_rt*, %struct.acpi_tad_rt** %8, align 8
  %61 = call i32 @memcpy(%struct.acpi_tad_rt* %59, %struct.acpi_tad_rt* %60, i32 4)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %57, %46, %38, %29
  %63 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %64 = load %union.acpi_object*, %union.acpi_object** %63, align 8
  %65 = call i32 @ACPI_FREE(%union.acpi_object* %64)
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @memcpy(%struct.acpi_tad_rt*, %struct.acpi_tad_rt*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
