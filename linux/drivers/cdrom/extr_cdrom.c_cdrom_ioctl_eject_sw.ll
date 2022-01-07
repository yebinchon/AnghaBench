; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_eject_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_eject_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i64 }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"entering CDROMEJECT_SW\0A\00", align 1
@CDC_OPEN_TRAY = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CDO_AUTO_CLOSE = common dso_local global i32 0, align 4
@CDO_AUTO_EJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i64)* @cdrom_ioctl_eject_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_eject_sw(%struct.cdrom_device_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i64, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @CD_DO_IOCTL, align 4
  %7 = call i32 @cd_dbg(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CDC_OPEN_TRAY, align 4
  %9 = call i32 @CDROM_CAN(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOSYS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %16 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %14
  %23 = load i32, i32* @CDO_AUTO_CLOSE, align 4
  %24 = load i32, i32* @CDO_AUTO_EJECT, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %28 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load i32, i32* @CDO_AUTO_CLOSE, align 4
  %35 = load i32, i32* @CDO_AUTO_EJECT, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %38 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %33, %22
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %19, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @cd_dbg(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
