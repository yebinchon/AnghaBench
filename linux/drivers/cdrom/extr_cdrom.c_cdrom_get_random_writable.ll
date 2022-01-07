; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_get_random_writable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_get_random_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32 }
%struct.rwrt_feature_desc = type { i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_GET_CONFIGURATION = common dso_local global i32 0, align 4
@CDF_RWRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.rwrt_feature_desc*)* @cdrom_get_random_writable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_get_random_writable(%struct.cdrom_device_info* %0, %struct.rwrt_feature_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.rwrt_feature_desc*, align 8
  %6 = alloca %struct.packet_command, align 8
  %7 = alloca [24 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.rwrt_feature_desc* %1, %struct.rwrt_feature_desc** %5, align 8
  %9 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %10 = load i32, i32* @CGC_DATA_READ, align 4
  %11 = call i32 @init_cdrom_command(%struct.packet_command* %6, i8* %9, i32 24, i32 %10)
  %12 = load i32, i32* @GPCMD_GET_CONFIGURATION, align 4
  %13 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @CDF_RWRT, align 4
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  store i32 24, i32* %22, align 4
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 1, i32* %23, align 8
  %24 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %25 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %27, align 8
  %29 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %30 = call i32 %28(%struct.cdrom_device_info* %29, %struct.packet_command* %6)
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.rwrt_feature_desc*, %struct.rwrt_feature_desc** %5, align 8
  %36 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 4
  %37 = call i32 @memcpy(%struct.rwrt_feature_desc* %35, i8* %36, i32 4)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.rwrt_feature_desc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
