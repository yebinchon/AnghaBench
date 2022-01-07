; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { %struct.blkfront_info* }
%struct.blkfront_info = type { i32, i32 }

@blkfront_mutex = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @blkif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkif_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.blkfront_info*, align 8
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.block_device*, %struct.block_device** %3, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 0
  %10 = load %struct.gendisk*, %struct.gendisk** %9, align 8
  store %struct.gendisk* %10, %struct.gendisk** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 @mutex_lock(i32* @blkfront_mutex)
  %12 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i32 0, i32 0
  %14 = load %struct.blkfront_info*, %struct.blkfront_info** %13, align 8
  store %struct.blkfront_info* %14, %struct.blkfront_info** %6, align 8
  %15 = load %struct.blkfront_info*, %struct.blkfront_info** %6, align 8
  %16 = icmp ne %struct.blkfront_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ERESTARTSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.blkfront_info*, %struct.blkfront_info** %6, align 8
  %22 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.blkfront_info*, %struct.blkfront_info** %6, align 8
  %25 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.blkfront_info*, %struct.blkfront_info** %6, align 8
  %33 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %35

35:                                               ; preds = %31, %17
  %36 = call i32 @mutex_unlock(i32* @blkfront_mutex)
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
