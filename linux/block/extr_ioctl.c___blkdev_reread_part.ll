; ModuleID = '/home/carl/AnghaBench/linux/block/extr_ioctl.c___blkdev_reread_part.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_ioctl.c___blkdev_reread_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.block_device*, %struct.gendisk* }
%struct.gendisk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__blkdev_reread_part(%struct.block_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.gendisk*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  %5 = load %struct.block_device*, %struct.block_device** %3, align 8
  %6 = getelementptr inbounds %struct.block_device, %struct.block_device* %5, i32 0, i32 2
  %7 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  store %struct.gendisk* %7, %struct.gendisk** %4, align 8
  %8 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %9 = call i32 @disk_part_scan_enabled(%struct.gendisk* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.block_device*, %struct.block_device** %3, align 8
  %13 = load %struct.block_device*, %struct.block_device** %3, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 1
  %15 = load %struct.block_device*, %struct.block_device** %14, align 8
  %16 = icmp ne %struct.block_device* %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %11
  %21 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %22 = call i32 @capable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %20
  %28 = load %struct.block_device*, %struct.block_device** %3, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 0
  %30 = call i32 @lockdep_assert_held(i32* %29)
  %31 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %32 = load %struct.block_device*, %struct.block_device** %3, align 8
  %33 = call i32 @rescan_partitions(%struct.gendisk* %31, %struct.block_device* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %24, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @disk_part_scan_enabled(%struct.gendisk*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rescan_partitions(%struct.gendisk*, %struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
