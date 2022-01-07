; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_remove_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_remove_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.dma_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dev_attr_dev_id = common dso_local global i32 0, align 4
@dev_attr_count = common dso_local global i32 0, align 4
@dev_attr_mode = common dso_local global i32 0, align 4
@dev_attr_flags = common dso_local global i32 0, align 4
@dev_attr_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dma%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_remove_sysfs_files(%struct.dma_channel* %0, %struct.dma_info* %1) #0 {
  %3 = alloca %struct.dma_channel*, align 8
  %4 = alloca %struct.dma_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.dma_channel* %0, %struct.dma_channel** %3, align 8
  store %struct.dma_info* %1, %struct.dma_info** %4, align 8
  %7 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %8 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i32 @device_remove_file(%struct.device* %9, i32* @dev_attr_dev_id)
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @device_remove_file(%struct.device* %11, i32* @dev_attr_count)
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @device_remove_file(%struct.device* %13, i32* @dev_attr_mode)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @device_remove_file(%struct.device* %15, i32* @dev_attr_flags)
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @device_remove_file(%struct.device* %17, i32* @dev_attr_config)
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %20 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %21 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snprintf(i8* %19, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %25 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %30 = call i32 @sysfs_remove_link(i32* %28, i8* %29)
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @device_unregister(%struct.device* %31)
  ret void
}

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
