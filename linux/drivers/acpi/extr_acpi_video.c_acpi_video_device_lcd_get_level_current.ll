; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_device_lcd_get_level_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_device_lcd_get_level_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64*, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BQC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_BCQ\00", align 1
@ACPI_VIDEO_FIRST_LEVEL = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s returned an invalid level\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Evaluating %s failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*, i64*, i32)* @acpi_video_device_lcd_get_level_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_lcd_get_level_current(%struct.acpi_video_device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_video_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %108

23:                                               ; preds = %17, %3
  %24 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %30, i8** %10, align 8
  %31 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = call i32 @acpi_evaluate_integer(i32 %35, i8* %36, i32* null, i64* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @ACPI_SUCCESS(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %96

42:                                               ; preds = %23
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %115

46:                                               ; preds = %42
  %47 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @acpi_video_bqc_value_to_level(%struct.acpi_video_device* %47, i64 %49)
  %51 = load i64*, i64** %6, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %82, %46
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %56 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %53
  %62 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %63 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %78 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i64 %76, i64* %80, align 8
  store i32 0, i32* %4, align 4
  br label %115

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %53

85:                                               ; preds = %53
  %86 = load i32, i32* @AE_INFO, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = call i32 @ACPI_WARNING(i32 %88)
  %90 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %91 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %94 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  br label %107

96:                                               ; preds = %23
  %97 = load i32, i32* @AE_INFO, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = call i32 @ACPI_WARNING(i32 %99)
  %101 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %102 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %105 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %96, %85
  br label %108

108:                                              ; preds = %107, %17
  %109 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %110 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %6, align 8
  store i64 %113, i64* %114, align 8
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %108, %74, %45
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i64 @acpi_video_bqc_value_to_level(%struct.acpi_video_device*, i64) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
