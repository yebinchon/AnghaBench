; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_show_devices.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_show_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dma_info = type { i8* }
%struct.dma_channel = type { i32, i8* }

@.str = private unnamed_addr constant [17 x i8] c"%2d: %14s    %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dma_show_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_show_devices(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_info*, align 8
  %10 = alloca %struct.dma_channel*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %46, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.dma_info* @get_dma_info(i32 %15)
  store %struct.dma_info* %16, %struct.dma_info** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.dma_channel* @get_dma_channel(i32 %17)
  store %struct.dma_channel* %18, %struct.dma_channel** %10, align 8
  %19 = load %struct.dma_info*, %struct.dma_info** %9, align 8
  %20 = icmp ne %struct.dma_info* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load %struct.dma_channel*, %struct.dma_channel** %10, align 8
  %27 = icmp ne %struct.dma_channel* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %14
  br label %46

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load %struct.dma_channel*, %struct.dma_channel** %10, align 8
  %35 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dma_info*, %struct.dma_info** %9, align 8
  %38 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.dma_channel*, %struct.dma_channel** %10, align 8
  %41 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %39, i8* %42)
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %29, %28
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.dma_info* @get_dma_info(i32) #1

declare dso_local %struct.dma_channel* @get_dma_channel(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
