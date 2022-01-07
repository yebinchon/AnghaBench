; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blkdev_issue_flush.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blkdev_issue_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32* }
%struct.request_queue = type { i32 }
%struct.bio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkdev_issue_flush(%struct.block_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.block_device*, %struct.block_device** %5, align 8
  %12 = getelementptr inbounds %struct.block_device, %struct.block_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.block_device*, %struct.block_device** %5, align 8
  %20 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %19)
  store %struct.request_queue* %20, %struct.request_queue** %8, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %22 = icmp ne %struct.request_queue* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %18
  %27 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.bio* @bio_alloc(i32 %35, i32 0)
  store %struct.bio* %36, %struct.bio** %9, align 8
  %37 = load %struct.bio*, %struct.bio** %9, align 8
  %38 = load %struct.block_device*, %struct.block_device** %5, align 8
  %39 = call i32 @bio_set_dev(%struct.bio* %37, %struct.block_device* %38)
  %40 = load i32, i32* @REQ_OP_WRITE, align 4
  %41 = load i32, i32* @REQ_PREFLUSH, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.bio*, %struct.bio** %9, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bio*, %struct.bio** %9, align 8
  %46 = call i32 @submit_bio_wait(%struct.bio* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %34
  %50 = load %struct.bio*, %struct.bio** %9, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %34
  %56 = load %struct.bio*, %struct.bio** %9, align 8
  %57 = call i32 @bio_put(%struct.bio* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %31, %23, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
