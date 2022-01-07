; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_select_disc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_select_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"entering CDROM_SELECT_DISC\0A\00", align 1
@CDC_SELECT_DISC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@CDSL_CURRENT = common dso_local global i64 0, align 8
@CDSL_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CD_CHANGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Using generic cdrom_select_disc()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i64)* @cdrom_ioctl_select_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_select_disc(%struct.cdrom_device_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i64, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @CD_DO_IOCTL, align 4
  %7 = call i32 @cd_dbg(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CDC_SELECT_DISC, align 4
  %9 = call i32 @CDROM_CAN(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOSYS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @CDSL_CURRENT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @CDSL_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %25 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %18, %14
  %33 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %34 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.cdrom_device_info*, i64)**
  %38 = load i32 (%struct.cdrom_device_info*, i64)*, i32 (%struct.cdrom_device_info*, i64)** %37, align 8
  %39 = icmp ne i32 (%struct.cdrom_device_info*, i64)* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %42 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.cdrom_device_info*, i64)**
  %46 = load i32 (%struct.cdrom_device_info*, i64)*, i32 (%struct.cdrom_device_info*, i64)** %45, align 8
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 %46(%struct.cdrom_device_info* %47, i64 %48)
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %32
  %51 = load i32, i32* @CD_CHANGER, align 4
  %52 = call i32 @cd_dbg(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @cdrom_select_disc(%struct.cdrom_device_info* %53, i64 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %40, %28, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cd_dbg(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_select_disc(%struct.cdrom_device_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
