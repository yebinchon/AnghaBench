; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_media_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i64 }
%struct.cdrom_changer_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"entering CDROM_MEDIA_CHANGED\0A\00", align 1
@CDC_MEDIA_CHANGED = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@CDC_SELECT_DISC = common dso_local global i32 0, align 4
@CDSL_CURRENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i64)* @cdrom_ioctl_media_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_media_changed(%struct.cdrom_device_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cdrom_changer_info*, align 8
  %7 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @CD_DO_IOCTL, align 4
  %9 = call i32 @cd_dbg(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @CDC_MEDIA_CHANGED, align 4
  %11 = call i32 @CDROM_CAN(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load i32, i32* @CDC_SELECT_DISC, align 4
  %18 = call i32 @CDROM_CAN(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @CDSL_CURRENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %16
  %25 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %26 = call i32 @media_changed(%struct.cdrom_device_info* %25, i32 1)
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %30 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %62

36:                                               ; preds = %27
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.cdrom_changer_info* @kmalloc(i32 8, i32 %37)
  store %struct.cdrom_changer_info* %38, %struct.cdrom_changer_info** %6, align 8
  %39 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %40 = icmp ne %struct.cdrom_changer_info* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %36
  %45 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %46 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %47 = call i32 @cdrom_read_mech_status(%struct.cdrom_device_info* %45, %struct.cdrom_changer_info* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %52 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %44
  %59 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %6, align 8
  %60 = call i32 @kfree(%struct.cdrom_changer_info* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %41, %33, %24, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @cd_dbg(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @media_changed(%struct.cdrom_device_info*, i32) #1

declare dso_local %struct.cdrom_changer_info* @kmalloc(i32, i32) #1

declare dso_local i32 @cdrom_read_mech_status(%struct.cdrom_device_info*, %struct.cdrom_changer_info*) #1

declare dso_local i32 @kfree(%struct.cdrom_changer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
