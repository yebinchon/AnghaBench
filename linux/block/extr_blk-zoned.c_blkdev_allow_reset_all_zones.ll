; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blkdev_allow_reset_all_zones.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blkdev_allow_reset_all_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i64)* @blkdev_allow_reset_all_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkdev_allow_reset_all_zones(%struct.block_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.block_device*, %struct.block_device** %4, align 8
  %7 = call i32 @bdev_get_queue(%struct.block_device* %6)
  %8 = call i32 @blk_queue_zone_resetall(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.block_device*, %struct.block_device** %4, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @part_nr_sects_read(i32 %15)
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %36

19:                                               ; preds = %11
  %20 = load %struct.block_device*, %struct.block_device** %4, align 8
  %21 = call i64 @get_start_sect(%struct.block_device* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.block_device*, %struct.block_device** %4, align 8
  %25 = getelementptr inbounds %struct.block_device, %struct.block_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @part_nr_sects_read(i32 %26)
  %28 = load %struct.block_device*, %struct.block_device** %4, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @get_capacity(i32 %30)
  %32 = icmp eq i64 %27, %31
  br label %33

33:                                               ; preds = %23, %19
  %34 = phi i1 [ false, %19 ], [ %32, %23 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %18, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @blk_queue_zone_resetall(i32) #1

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #1

declare dso_local i64 @part_nr_sects_read(i32) #1

declare dso_local i64 @get_start_sect(%struct.block_device*) #1

declare dso_local i64 @get_capacity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
