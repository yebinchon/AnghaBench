; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_device_lcd_set_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_device_lcd_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_BCM\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Evaluating _BCM failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@ACPI_VIDEO_FIRST_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Current brightness invalid\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*, i32)* @acpi_video_device_lcd_set_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_lcd_set_level(%struct.acpi_video_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_video_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @acpi_execute_simple_method(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @AE_INFO, align 4
  %20 = call i32 @ACPI_ERROR(i32 ptrtoint ([23 x i8]* @.str.1 to i32))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %66, %23
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %39, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %38
  %51 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %52 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %74

65:                                               ; preds = %38
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %30

69:                                               ; preds = %30
  %70 = load i32, i32* @AE_INFO, align 4
  %71 = call i32 @ACPI_ERROR(i32 ptrtoint ([27 x i8]* @.str.2 to i32))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %64, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @acpi_execute_simple_method(i32, i8*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
