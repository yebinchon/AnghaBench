; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_acpi_fan_get_fif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_acpi_fan_get_fif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8*, %union.acpi_object* }
%union.acpi_object = type { i64 }
%struct.acpi_device = type { i32, i32 }
%struct.acpi_fan = type { i8 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NNNN\00", align 1
@__const.acpi_fan_get_fif.format = private unnamed_addr constant %struct.acpi_buffer { i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %union.acpi_object* null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_FIF\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid _FIF data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid _FIF element\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_fan_get_fif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fan_get_fif(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca %struct.acpi_fan*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %10 = bitcast %struct.acpi_buffer* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %12, i32* %11, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = call %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device* %13)
  store %struct.acpi_fan* %14, %struct.acpi_fan** %5, align 8
  %15 = bitcast %struct.acpi_buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_fan_get_fif.format to i8*), i64 24, i1 false)
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  %18 = load %struct.acpi_fan*, %struct.acpi_fan** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %18, i32 0, i32 0
  store i8* %19, i8** %17, align 8
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store %union.acpi_object* null, %union.acpi_object** %20, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @acpi_evaluate_object(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.acpi_buffer* %4)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %2, align 4
  br label %64

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 2
  %32 = load %union.acpi_object*, %union.acpi_object** %31, align 8
  store %union.acpi_object* %32, %union.acpi_object** %8, align 8
  %33 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %34 = icmp ne %union.acpi_object* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %37 = bitcast %union.acpi_object* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35, %30
  %42 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %60

47:                                               ; preds = %35
  %48 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %49 = call i32 @acpi_extract_package(%union.acpi_object* %48, %struct.acpi_buffer* %6, %struct.acpi_buffer* %7)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %53, %47
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %62 = call i32 @kfree(%union.acpi_object* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %28
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @acpi_extract_package(%union.acpi_object*, %struct.acpi_buffer*, %struct.acpi_buffer*) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
