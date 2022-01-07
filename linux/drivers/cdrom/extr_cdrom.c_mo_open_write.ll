; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_mo_open_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_mo_open_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }
%struct.packet_command = type { i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPMODE_ALL_PAGES = common dso_local global i32 0, align 4
@GPMODE_VENDOR_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*)* @mo_open_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mo_open_write(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.packet_command, align 4
  %5 = alloca [255 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %7 = bitcast [255 x i8]* %5 to i8**
  %8 = load i32, i32* @CGC_DATA_READ, align 4
  %9 = call i32 @init_cdrom_command(%struct.packet_command* %4, i8** %7, i32 4, i32 %8)
  %10 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %4, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %12 = load i32, i32* @GPMODE_ALL_PAGES, align 4
  %13 = call i32 @cdrom_mode_sense(%struct.cdrom_device_info* %11, %struct.packet_command* %4, i32 %12, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %18 = load i32, i32* @GPMODE_VENDOR_PAGE, align 4
  %19 = call i32 @cdrom_mode_sense(%struct.cdrom_device_info* %17, %struct.packet_command* %4, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %4, i32 0, i32 1
  store i32 255, i32* %24, align 4
  %25 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %26 = load i32, i32* @GPMODE_ALL_PAGES, align 4
  %27 = call i32 @cdrom_mode_sense(%struct.cdrom_device_info* %25, %struct.packet_command* %4, i32 %26, i32 0)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 128
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8**, i32, i32) #1

declare dso_local i32 @cdrom_mode_sense(%struct.cdrom_device_info*, %struct.packet_command*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
