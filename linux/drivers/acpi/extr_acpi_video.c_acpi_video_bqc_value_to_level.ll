; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bqc_value_to_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bqc_value_to_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@ACPI_VIDEO_FIRST_LEVEL = common dso_local global i64 0, align 8
@bqc_offset_aml_bug_workaround = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.acpi_video_device*, i64)* @acpi_video_bqc_value_to_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_video_bqc_value_to_level(%struct.acpi_video_device* %0, i64 %1) #0 {
  %3 = alloca %struct.acpi_video_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @ACPI_VIDEO_FIRST_LEVEL, align 8
  %29 = sub i64 %27, %28
  %30 = sub i64 %29, 1
  %31 = load i64, i64* %4, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %21, %13
  %34 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @ACPI_VIDEO_FIRST_LEVEL, align 8
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %5, align 8
  br label %46

44:                                               ; preds = %2
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i64, i64* @bqc_offset_aml_bug_workaround, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
