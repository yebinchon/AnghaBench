; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c_create_of_modalias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c_create_of_modalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i8*, i32 }
%struct.TYPE_6__ = type { i8* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_SINGLE_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"of:N%sT\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"C%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i8*, i32)* @create_of_modalias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_of_modalias(%struct.acpi_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %18 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %17, align 8
  %21 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ACPI_SINGLE_NAME, align 4
  %26 = call i32 @acpi_get_name(i32 %24, i32 %25, %struct.acpi_buffer* %8)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %129

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %16, align 8
  br label %36

36:                                               ; preds = %46, %33
  %37 = load i8*, i8** %16, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i8*, i8** %16, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call signext i8 @tolower(i8 signext %43)
  %45 = load i8*, i8** %16, align 8
  store i8 %44, i8* %45, align 1
  br label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %16, align 8
  br label %36

49:                                               ; preds = %36
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @ACPI_FREE(i8* %56)
  %58 = load i32, i32* %12, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %129

62:                                               ; preds = %49
  %63 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %64 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %union.acpi_object*, %union.acpi_object** %65, align 8
  store %union.acpi_object* %66, %union.acpi_object** %9, align 8
  %67 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %68 = bitcast %union.acpi_object* %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %74 = bitcast %union.acpi_object* %73 to %struct.TYPE_5__*
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %15, align 4
  %77 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %78 = bitcast %union.acpi_object* %77 to %struct.TYPE_5__*
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load %union.acpi_object*, %union.acpi_object** %79, align 8
  store %union.acpi_object* %80, %union.acpi_object** %10, align 8
  br label %83

81:                                               ; preds = %62
  store i32 1, i32* %15, align 4
  %82 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  store %union.acpi_object* %82, %union.acpi_object** %10, align 8
  br label %83

83:                                               ; preds = %81, %72
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %118, %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %123

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* %7, align 4
  %94 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %95 = bitcast %union.acpi_object* %94 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @snprintf(i8* %92, i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %129

104:                                              ; preds = %88
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %129

111:                                              ; preds = %104
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  %121 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %122 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %121, i32 1
  store %union.acpi_object* %122, %union.acpi_object** %10, align 8
  br label %84

123:                                              ; preds = %84
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %123, %108, %101, %60, %30
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @acpi_get_name(i32, i32, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
