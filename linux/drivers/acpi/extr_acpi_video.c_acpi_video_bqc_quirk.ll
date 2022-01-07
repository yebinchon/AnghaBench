; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bqc_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bqc_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_4__, %struct.acpi_video_device_brightness* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.acpi_video_device_brightness = type { i32*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@bqc_offset_aml_bug_workaround = common dso_local global i64 0, align 8
@ACPI_VIDEO_FIRST_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*, i32, i32)* @acpi_video_bqc_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_bqc_quirk(%struct.acpi_video_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_video_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_video_device_brightness*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %12, i32 0, i32 1
  %14 = load %struct.acpi_video_device_brightness*, %struct.acpi_video_device_brightness** %13, align 8
  store %struct.acpi_video_device_brightness* %14, %struct.acpi_video_device_brightness** %8, align 8
  %15 = load i64, i64* @bqc_offset_aml_bug_workaround, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.acpi_video_device_brightness*, %struct.acpi_video_device_brightness** %8, align 8
  %24 = getelementptr inbounds %struct.acpi_video_device_brightness, %struct.acpi_video_device_brightness* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i32 [ %30, %22 ], [ %32, %31 ]
  store i32 %34, i32* %11, align 4
  %35 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @acpi_video_device_lcd_set_level(%struct.acpi_video_device* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %108

42:                                               ; preds = %33
  %43 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %44 = call i32 @acpi_video_device_lcd_get_level_current(%struct.acpi_video_device* %43, i64* %10, i32 1)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %108

49:                                               ; preds = %42
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %49
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.acpi_video_device_brightness*, %struct.acpi_video_device_brightness** %8, align 8
  %57 = getelementptr inbounds %struct.acpi_video_device_brightness, %struct.acpi_video_device_brightness* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %54
  %61 = load %struct.acpi_video_device_brightness*, %struct.acpi_video_device_brightness** %8, align 8
  %62 = getelementptr inbounds %struct.acpi_video_device_brightness, %struct.acpi_video_device_brightness* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.acpi_video_device_brightness*, %struct.acpi_video_device_brightness** %8, align 8
  %68 = getelementptr inbounds %struct.acpi_video_device_brightness, %struct.acpi_video_device_brightness* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %69, %71
  %73 = sub i64 %72, 1
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %66, %60
  %77 = load %struct.acpi_video_device_brightness*, %struct.acpi_video_device_brightness** %8, align 8
  %78 = getelementptr inbounds %struct.acpi_video_device_brightness, %struct.acpi_video_device_brightness* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %80, %82
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load %struct.acpi_video_device_brightness*, %struct.acpi_video_device_brightness** %8, align 8
  %90 = getelementptr inbounds %struct.acpi_video_device_brightness, %struct.acpi_video_device_brightness* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %76
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.acpi_video_device_brightness*, %struct.acpi_video_device_brightness** %8, align 8
  %95 = getelementptr inbounds %struct.acpi_video_device_brightness, %struct.acpi_video_device_brightness* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %93
  %100 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %101 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %104 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %99, %93
  br label %107

107:                                              ; preds = %106, %49
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %47, %40, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @acpi_video_device_lcd_set_level(%struct.acpi_video_device*, i32) #1

declare dso_local i32 @acpi_video_device_lcd_get_level_current(%struct.acpi_video_device*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
