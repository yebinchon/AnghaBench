; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_check_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.pcd_unit* }
%struct.pcd_unit = type { i32 }

@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32, i32)* @pcd_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_check_events(%struct.cdrom_device_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcd_unit*, align 8
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %9, i32 0, i32 0
  %11 = load %struct.pcd_unit*, %struct.pcd_unit** %10, align 8
  store %struct.pcd_unit* %11, %struct.pcd_unit** %7, align 8
  %12 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %13 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %19 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  br label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
