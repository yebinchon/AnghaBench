; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_get_media_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_get_media_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32 }
%struct.media_event_desc = type { i32 }
%struct.event_header = type { i32, i64, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_GET_EVENT_STATUS_NOTIFICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_get_media_event(%struct.cdrom_device_info* %0, %struct.media_event_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.media_event_desc*, align 8
  %6 = alloca %struct.packet_command, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca %struct.event_header*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.media_event_desc* %1, %struct.media_event_desc** %5, align 8
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %10 = bitcast i8* %9 to %struct.event_header*
  store %struct.event_header* %10, %struct.event_header** %8, align 8
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* @CGC_DATA_READ, align 4
  %13 = call i32 @init_cdrom_command(%struct.packet_command* %6, i8* %11, i32 8, i32 %12)
  %14 = load i32, i32* @GPCMD_GET_EVENT_STATUS_NOTIFICATION, align 4
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %14, i32* %17, align 4
  %18 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32 16, i32* %23, align 4
  %24 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  store i32 8, i32* %26, align 4
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %29 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64 (%struct.cdrom_device_info*, %struct.packet_command*)*, i64 (%struct.cdrom_device_info*, %struct.packet_command*)** %31, align 8
  %33 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %34 = call i64 %32(%struct.cdrom_device_info* %33, %struct.packet_command* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %60

37:                                               ; preds = %2
  %38 = load %struct.event_header*, %struct.event_header** %8, align 8
  %39 = getelementptr inbounds %struct.event_header, %struct.event_header* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load %struct.event_header*, %struct.event_header** %8, align 8
  %47 = getelementptr inbounds %struct.event_header, %struct.event_header* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.event_header*, %struct.event_header** %8, align 8
  %52 = getelementptr inbounds %struct.event_header, %struct.event_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %45
  store i32 1, i32* %3, align 4
  br label %60

56:                                               ; preds = %50
  %57 = load %struct.media_event_desc*, %struct.media_event_desc** %5, align 8
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 24
  %59 = call i32 @memcpy(%struct.media_event_desc* %57, i8* %58, i32 4)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %55, %44, %36
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.media_event_desc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
