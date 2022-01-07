; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mmc3_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mmc3_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_GET_CONFIGURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdrom_device_info*)* @cdrom_mmc3_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdrom_mmc3_profile(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca %struct.cdrom_device_info*, align 8
  %3 = alloca %struct.packet_command, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %2, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %8 = load i32, i32* @CGC_DATA_READ, align 4
  %9 = call i32 @init_cdrom_command(%struct.packet_command* %3, i8* %7, i32 32, i32 %8)
  %10 = load i32, i32* @GPCMD_GET_CONFIGURATION, align 4
  %11 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %10, i32* %13, align 4
  %14 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 8
  store i32 32, i32* %25, align 4
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %28 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %30, align 8
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %33 = call i32 %31(%struct.cdrom_device_info* %32, %struct.packet_command* %3)
  store i32 %33, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 65535, i32* %6, align 4
  br label %45

36:                                               ; preds = %1
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 6
  %38 = load i8, i8* %37, align 2
  %39 = sext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 7
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = or i32 %40, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %36, %35
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %48 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  ret void
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
