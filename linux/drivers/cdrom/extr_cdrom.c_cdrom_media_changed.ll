; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_media_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@CDC_MEDIA_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_media_changed(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %4 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %5 = icmp eq %struct.cdrom_device_info* %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %8 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %22

14:                                               ; preds = %6
  %15 = load i32, i32* @CDC_MEDIA_CHANGED, align 4
  %16 = call i32 @CDROM_CAN(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %14
  %20 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %21 = call i32 @media_changed(%struct.cdrom_device_info* %20, i32 0)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %18, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @media_changed(%struct.cdrom_device_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
