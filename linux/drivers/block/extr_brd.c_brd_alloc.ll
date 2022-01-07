; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_brd.c_brd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_brd.c_brd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brd_device = type { i32, %struct.TYPE_10__*, %struct.gendisk*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.gendisk = type { i32, i32, i32, %struct.brd_device*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@brd_make_request = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@max_part = common dso_local global i32 0, align 4
@RAMDISK_MAJOR = common dso_local global i32 0, align 4
@brd_fops = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ram%d\00", align 1
@rd_size = common dso_local global i32 0, align 4
@BDI_CAP_SYNCHRONOUS_IO = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brd_device* (i32)* @brd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brd_device* @brd_alloc(i32 %0) #0 {
  %2 = alloca %struct.brd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.brd_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.brd_device* @kzalloc(i32 32, i32 %6)
  store %struct.brd_device* %7, %struct.brd_device** %4, align 8
  %8 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %9 = icmp ne %struct.brd_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %107

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %14 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %16 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %15, i32 0, i32 4
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %19 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %18, i32 0, i32 3
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i32 @INIT_RADIX_TREE(i32* %19, i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.TYPE_10__* @blk_alloc_queue(i32 %22)
  %24 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %25 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %24, i32 0, i32 1
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %27 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %11
  br label %104

31:                                               ; preds = %11
  %32 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %33 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i32, i32* @brd_make_request, align 4
  %36 = call i32 @blk_queue_make_request(%struct.TYPE_10__* %34, i32 %35)
  %37 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %38 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_10__* %39, i32 1024)
  %41 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %42 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @blk_queue_physical_block_size(%struct.TYPE_10__* %43, i32 %44)
  %46 = load i32, i32* @max_part, align 4
  %47 = call %struct.gendisk* @alloc_disk(i32 %46)
  %48 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %49 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %48, i32 0, i32 2
  store %struct.gendisk* %47, %struct.gendisk** %49, align 8
  store %struct.gendisk* %47, %struct.gendisk** %5, align 8
  %50 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %51 = icmp ne %struct.gendisk* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %31
  br label %99

53:                                               ; preds = %31
  %54 = load i32, i32* @RAMDISK_MAJOR, align 4
  %55 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %56 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @max_part, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %61 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %63 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %62, i32 0, i32 4
  store i32* @brd_fops, i32** %63, align 8
  %64 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %65 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %66 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %65, i32 0, i32 3
  store %struct.brd_device* %64, %struct.brd_device** %66, align 8
  %67 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %68 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %69 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %71 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @sprintf(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %76 = load i32, i32* @rd_size, align 4
  %77 = mul nsw i32 %76, 2
  %78 = call i32 @set_capacity(%struct.gendisk* %75, i32 %77)
  %79 = load i32, i32* @BDI_CAP_SYNCHRONOUS_IO, align 4
  %80 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %81 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %79
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %89 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %90 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @blk_queue_flag_set(i32 %88, %struct.TYPE_10__* %91)
  %93 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %94 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %95 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = call i32 @blk_queue_flag_clear(i32 %93, %struct.TYPE_10__* %96)
  %98 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  store %struct.brd_device* %98, %struct.brd_device** %2, align 8
  br label %108

99:                                               ; preds = %52
  %100 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %101 = getelementptr inbounds %struct.brd_device, %struct.brd_device* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = call i32 @blk_cleanup_queue(%struct.TYPE_10__* %102)
  br label %104

104:                                              ; preds = %99, %30
  %105 = load %struct.brd_device*, %struct.brd_device** %4, align 8
  %106 = call i32 @kfree(%struct.brd_device* %105)
  br label %107

107:                                              ; preds = %104, %10
  store %struct.brd_device* null, %struct.brd_device** %2, align 8
  br label %108

108:                                              ; preds = %107, %53
  %109 = load %struct.brd_device*, %struct.brd_device** %2, align 8
  ret %struct.brd_device* %109
}

declare dso_local %struct.brd_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @blk_alloc_queue(i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.brd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
