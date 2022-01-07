; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_update_rotational.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_update_rotational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { %struct.request_queue*, %struct.file* }
%struct.request_queue = type { i32 }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.block_device* }
%struct.block_device = type { i32 }

@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop_device*)* @loop_update_rotational to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_update_rotational(%struct.loop_device* %0) #0 {
  %2 = alloca %struct.loop_device*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %2, align 8
  %8 = load %struct.loop_device*, %struct.loop_device** %2, align 8
  %9 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %8, i32 0, i32 1
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %3, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %4, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.block_device*, %struct.block_device** %19, align 8
  store %struct.block_device* %20, %struct.block_device** %5, align 8
  %21 = load %struct.loop_device*, %struct.loop_device** %2, align 8
  %22 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %21, i32 0, i32 0
  %23 = load %struct.request_queue*, %struct.request_queue** %22, align 8
  store %struct.request_queue* %23, %struct.request_queue** %6, align 8
  store i32 1, i32* %7, align 4
  %24 = load %struct.block_device*, %struct.block_device** %5, align 8
  %25 = icmp ne %struct.block_device* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.block_device*, %struct.block_device** %5, align 8
  %28 = call i32 @bdev_get_queue(%struct.block_device* %27)
  %29 = call i32 @blk_queue_nonrot(i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %35 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %36 = call i32 @blk_queue_flag_set(i32 %34, %struct.request_queue* %35)
  br label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %39 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %40 = call i32 @blk_queue_flag_clear(i32 %38, %struct.request_queue* %39)
  br label %41

41:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @blk_queue_nonrot(i32) #1

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
