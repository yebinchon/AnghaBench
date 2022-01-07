; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_acpi_fan_get_fps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_acpi_fan_get_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8*, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.acpi_device = type { i32, i32 }
%struct.acpi_fan = type { i32, i8* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_FPS\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid _FPS data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Not enough memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"NNNNN\00", align 1
@__const.acpi_fan_get_fps.format = private unnamed_addr constant %struct.acpi_buffer { i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %union.acpi_object* null }, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid _FPS element\0A\00", align 1
@acpi_fan_speed_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_fan_get_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fan_get_fps(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_fan*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %struct.acpi_buffer, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = call %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device* %11)
  store %struct.acpi_fan* %12, %struct.acpi_fan** %4, align 8
  %13 = bitcast %struct.acpi_buffer* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %15 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @acpi_evaluate_object(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %5)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %126

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  %27 = load %union.acpi_object*, %union.acpi_object** %26, align 8
  store %union.acpi_object* %27, %union.acpi_object** %6, align 8
  %28 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %29 = icmp ne %union.acpi_object* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %32 = bitcast %union.acpi_object* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %36, %30, %25
  %43 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %122

48:                                               ; preds = %36
  %49 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %50 = bitcast %union.acpi_object* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.acpi_fan*, %struct.acpi_fan** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 0
  %58 = load %struct.acpi_fan*, %struct.acpi_fan** %4, align 8
  %59 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @devm_kcalloc(i32* %57, i32 %60, i32 4, i32 %61)
  %63 = load %struct.acpi_fan*, %struct.acpi_fan** %4, align 8
  %64 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.acpi_fan*, %struct.acpi_fan** %4, align 8
  %66 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %48
  %70 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %71 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %122

75:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %110, %75
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.acpi_fan*, %struct.acpi_fan** %4, align 8
  %79 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = bitcast %struct.acpi_buffer* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_fan_get_fps.format to i8*), i64 24, i1 false)
  %84 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1
  %86 = load %struct.acpi_fan*, %struct.acpi_fan** %4, align 8
  %87 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8* %91, i8** %85, align 8
  %92 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 2
  store %union.acpi_object* null, %union.acpi_object** %92, align 8
  %93 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %94 = bitcast %union.acpi_object* %93 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @acpi_extract_package(i32* %100, %struct.acpi_buffer* %9, %struct.acpi_buffer* %10)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @ACPI_FAILURE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %82
  %106 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %107 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %113

109:                                              ; preds = %82
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %76

113:                                              ; preds = %105, %76
  %114 = load %struct.acpi_fan*, %struct.acpi_fan** %4, align 8
  %115 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.acpi_fan*, %struct.acpi_fan** %4, align 8
  %118 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @acpi_fan_speed_cmp, align 4
  %121 = call i32 @sort(i8* %116, i32 %119, i32 1, i32 %120, i32* null)
  br label %122

122:                                              ; preds = %113, %69, %42
  %123 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %124 = call i32 @kfree(%union.acpi_object* %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %23
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @acpi_extract_package(i32*, %struct.acpi_buffer*, %struct.acpi_buffer*) #1

declare dso_local i32 @sort(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
