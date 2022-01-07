; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ps3disk.c_ps3disk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ps3disk.c_ps3disk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3_storage_device = type { %struct.ps3disk_private*, %struct.TYPE_2__ }
%struct.ps3disk_private = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ps3disk_mask_mutex = common dso_local global i32 0, align 4
@PS3DISK_MINORS = common dso_local global i32 0, align 4
@ps3disk_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Synchronizing disk cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_system_bus_device*)* @ps3disk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3disk_remove(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca %struct.ps3_system_bus_device*, align 8
  %3 = alloca %struct.ps3_storage_device*, align 8
  %4 = alloca %struct.ps3disk_private*, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %2, align 8
  %5 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %6 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %5, i32 0, i32 0
  %7 = call %struct.ps3_storage_device* @to_ps3_storage_device(i32* %6)
  store %struct.ps3_storage_device* %7, %struct.ps3_storage_device** %3, align 8
  %8 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %3, align 8
  %9 = getelementptr inbounds %struct.ps3_storage_device, %struct.ps3_storage_device* %8, i32 0, i32 1
  %10 = call %struct.ps3disk_private* @ps3_system_bus_get_drvdata(%struct.TYPE_2__* %9)
  store %struct.ps3disk_private* %10, %struct.ps3disk_private** %4, align 8
  %11 = call i32 @mutex_lock(i32* @ps3disk_mask_mutex)
  %12 = load %struct.ps3disk_private*, %struct.ps3disk_private** %4, align 8
  %13 = getelementptr inbounds %struct.ps3disk_private, %struct.ps3disk_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @disk_devt(i32 %14)
  %16 = call i32 @MINOR(i32 %15)
  %17 = load i32, i32* @PS3DISK_MINORS, align 4
  %18 = sdiv i32 %16, %17
  %19 = call i32 @__clear_bit(i32 %18, i32* @ps3disk_mask)
  %20 = call i32 @mutex_unlock(i32* @ps3disk_mask_mutex)
  %21 = load %struct.ps3disk_private*, %struct.ps3disk_private** %4, align 8
  %22 = getelementptr inbounds %struct.ps3disk_private, %struct.ps3disk_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @del_gendisk(i32 %23)
  %25 = load %struct.ps3disk_private*, %struct.ps3disk_private** %4, align 8
  %26 = getelementptr inbounds %struct.ps3disk_private, %struct.ps3disk_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @blk_cleanup_queue(i32 %27)
  %29 = load %struct.ps3disk_private*, %struct.ps3disk_private** %4, align 8
  %30 = getelementptr inbounds %struct.ps3disk_private, %struct.ps3disk_private* %29, i32 0, i32 1
  %31 = call i32 @blk_mq_free_tag_set(i32* %30)
  %32 = load %struct.ps3disk_private*, %struct.ps3disk_private** %4, align 8
  %33 = getelementptr inbounds %struct.ps3disk_private, %struct.ps3disk_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @put_disk(i32 %34)
  %36 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %3, align 8
  %37 = getelementptr inbounds %struct.ps3_storage_device, %struct.ps3_storage_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_notice(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %3, align 8
  %41 = call i32 @ps3disk_sync_cache(%struct.ps3_storage_device* %40)
  %42 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %3, align 8
  %43 = call i32 @ps3stor_teardown(%struct.ps3_storage_device* %42)
  %44 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %3, align 8
  %45 = getelementptr inbounds %struct.ps3_storage_device, %struct.ps3_storage_device* %44, i32 0, i32 0
  %46 = load %struct.ps3disk_private*, %struct.ps3disk_private** %45, align 8
  %47 = call i32 @kfree(%struct.ps3disk_private* %46)
  %48 = load %struct.ps3disk_private*, %struct.ps3disk_private** %4, align 8
  %49 = call i32 @kfree(%struct.ps3disk_private* %48)
  %50 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %51 = call i32 @ps3_system_bus_set_drvdata(%struct.ps3_system_bus_device* %50, i32* null)
  ret i32 0
}

declare dso_local %struct.ps3_storage_device* @to_ps3_storage_device(i32*) #1

declare dso_local %struct.ps3disk_private* @ps3_system_bus_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(i32) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @ps3disk_sync_cache(%struct.ps3_storage_device*) #1

declare dso_local i32 @ps3stor_teardown(%struct.ps3_storage_device*) #1

declare dso_local i32 @kfree(%struct.ps3disk_private*) #1

declare dso_local i32 @ps3_system_bus_set_drvdata(%struct.ps3_system_bus_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
