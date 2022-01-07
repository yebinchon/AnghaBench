; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_video_detect.c_acpi_video_get_backlight_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_video_detect.c_acpi_video_get_backlight_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@acpi_video_get_backlight_type.init_mutex = internal global i32 0, align 4
@acpi_video_get_backlight_type.init_done = internal global i32 0, align 4
@acpi_video_get_backlight_type.video_caps = internal global i64 0, align 8
@video_detect_dmi_table = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@find_video = common dso_local global i32 0, align 4
@backlight_notify_work = common dso_local global i32 0, align 4
@acpi_video_backlight_notify_work = common dso_local global i32 0, align 4
@acpi_video_backlight_notify = common dso_local global i32 0, align 4
@backlight_nb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@backlight_notifier_registered = common dso_local global i32 0, align 4
@acpi_backlight_cmdline = common dso_local global i64 0, align 8
@acpi_backlight_undef = common dso_local global i64 0, align 8
@acpi_backlight_dmi = common dso_local global i64 0, align 8
@ACPI_VIDEO_BACKLIGHT = common dso_local global i64 0, align 8
@acpi_backlight_vendor = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@acpi_backlight_native = common dso_local global i32 0, align 4
@acpi_backlight_video = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_video_get_backlight_type() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @mutex_lock(i32* @acpi_video_get_backlight_type.init_mutex)
  %3 = load i32, i32* @acpi_video_get_backlight_type.init_done, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @acpi_video_parse_cmdline()
  %7 = load i32, i32* @video_detect_dmi_table, align 4
  %8 = call i32 @dmi_check_system(i32 %7)
  %9 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %10 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %11 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %12 = load i32, i32* @find_video, align 4
  %13 = call i32 @acpi_walk_namespace(i32 %9, i32 %10, i32 %11, i32 %12, i32* null, i64* @acpi_video_get_backlight_type.video_caps, i32* null)
  %14 = load i32, i32* @acpi_video_backlight_notify_work, align 4
  %15 = call i32 @INIT_WORK(i32* @backlight_notify_work, i32 %14)
  %16 = load i32, i32* @acpi_video_backlight_notify, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @backlight_nb, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @backlight_nb, i32 0, i32 0), align 8
  %17 = call i64 @backlight_register_notifier(%struct.TYPE_3__* @backlight_nb)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 1, i32* @backlight_notifier_registered, align 4
  br label %20

20:                                               ; preds = %19, %5
  store i32 1, i32* @acpi_video_get_backlight_type.init_done, align 4
  br label %21

21:                                               ; preds = %20, %0
  %22 = call i32 @mutex_unlock(i32* @acpi_video_get_backlight_type.init_mutex)
  %23 = load i64, i64* @acpi_backlight_cmdline, align 8
  %24 = load i64, i64* @acpi_backlight_undef, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* @acpi_backlight_cmdline, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %1, align 4
  br label %54

29:                                               ; preds = %21
  %30 = load i64, i64* @acpi_backlight_dmi, align 8
  %31 = load i64, i64* @acpi_backlight_undef, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* @acpi_backlight_dmi, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %1, align 4
  br label %54

36:                                               ; preds = %29
  %37 = load i64, i64* @acpi_video_get_backlight_type.video_caps, align 8
  %38 = load i64, i64* @ACPI_VIDEO_BACKLIGHT, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @acpi_backlight_vendor, align 4
  store i32 %42, i32* %1, align 4
  br label %54

43:                                               ; preds = %36
  %44 = call i64 (...) @acpi_osi_is_win8()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @BACKLIGHT_RAW, align 4
  %48 = call i64 @backlight_device_get_by_type(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @acpi_backlight_native, align 4
  store i32 %51, i32* %1, align 4
  br label %54

52:                                               ; preds = %46, %43
  %53 = load i32, i32* @acpi_backlight_video, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %52, %50, %41, %33, %26
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_video_parse_cmdline(...) #1

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, i64*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @backlight_register_notifier(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @acpi_osi_is_win8(...) #1

declare dso_local i64 @backlight_device_get_by_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
