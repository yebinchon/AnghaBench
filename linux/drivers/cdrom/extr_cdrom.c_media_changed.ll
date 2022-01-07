; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_media_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i64 }

@CDC_MEDIA_CHANGED = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@CDSL_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @media_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media_changed(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 1
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @CDC_MEDIA_CHANGED, align 4
  %22 = call i32 @CDROM_CAN(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %28 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %40 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %41 = call i32 @cdrom_update_events(%struct.cdrom_device_info* %39, i32 %40)
  %42 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %43 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %48 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %59

49:                                               ; preds = %26
  %50 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %51 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.cdrom_device_info*, i32)**
  %55 = load i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*, i32)** %54, align 8
  %56 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %57 = load i32, i32* @CDSL_CURRENT, align 4
  %58 = call i32 %55(%struct.cdrom_device_info* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %49, %33
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %64 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %63, i32 0, i32 0
  store i32 3, i32* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %68 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %6, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %73 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cdrom_update_events(%struct.cdrom_device_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
