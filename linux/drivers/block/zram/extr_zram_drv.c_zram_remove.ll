; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.block_device = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Removed device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*)* @zram_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_remove(%struct.zram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zram*, align 8
  %4 = alloca %struct.block_device*, align 8
  store %struct.zram* %0, %struct.zram** %3, align 8
  %5 = load %struct.zram*, %struct.zram** %3, align 8
  %6 = getelementptr inbounds %struct.zram, %struct.zram* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call %struct.block_device* @bdget_disk(%struct.TYPE_4__* %7, i32 0)
  store %struct.block_device* %8, %struct.block_device** %4, align 8
  %9 = load %struct.block_device*, %struct.block_device** %4, align 8
  %10 = icmp ne %struct.block_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.block_device*, %struct.block_device** %4, align 8
  %16 = getelementptr inbounds %struct.block_device, %struct.block_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.block_device*, %struct.block_device** %4, align 8
  %19 = getelementptr inbounds %struct.block_device, %struct.block_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.zram*, %struct.zram** %3, align 8
  %24 = getelementptr inbounds %struct.zram, %struct.zram* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22, %14
  %28 = load %struct.block_device*, %struct.block_device** %4, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.block_device*, %struct.block_device** %4, align 8
  %32 = call i32 @bdput(%struct.block_device* %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %71

35:                                               ; preds = %22
  %36 = load %struct.zram*, %struct.zram** %3, align 8
  %37 = getelementptr inbounds %struct.zram, %struct.zram* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.block_device*, %struct.block_device** %4, align 8
  %39 = getelementptr inbounds %struct.block_device, %struct.block_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.zram*, %struct.zram** %3, align 8
  %42 = call i32 @zram_debugfs_unregister(%struct.zram* %41)
  %43 = load %struct.block_device*, %struct.block_device** %4, align 8
  %44 = call i32 @fsync_bdev(%struct.block_device* %43)
  %45 = load %struct.zram*, %struct.zram** %3, align 8
  %46 = call i32 @zram_reset_device(%struct.zram* %45)
  %47 = load %struct.block_device*, %struct.block_device** %4, align 8
  %48 = call i32 @bdput(%struct.block_device* %47)
  %49 = load %struct.zram*, %struct.zram** %3, align 8
  %50 = getelementptr inbounds %struct.zram, %struct.zram* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.zram*, %struct.zram** %3, align 8
  %56 = getelementptr inbounds %struct.zram, %struct.zram* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @del_gendisk(%struct.TYPE_4__* %57)
  %59 = load %struct.zram*, %struct.zram** %3, align 8
  %60 = getelementptr inbounds %struct.zram, %struct.zram* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @blk_cleanup_queue(i32 %63)
  %65 = load %struct.zram*, %struct.zram** %3, align 8
  %66 = getelementptr inbounds %struct.zram, %struct.zram* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @put_disk(%struct.TYPE_4__* %67)
  %69 = load %struct.zram*, %struct.zram** %3, align 8
  %70 = call i32 @kfree(%struct.zram* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %35, %27, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.block_device* @bdget_disk(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

declare dso_local i32 @zram_debugfs_unregister(%struct.zram*) #1

declare dso_local i32 @fsync_bdev(%struct.block_device*) #1

declare dso_local i32 @zram_reset_device(%struct.zram*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.zram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
