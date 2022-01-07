; ModuleID = '/home/carl/AnghaBench/linux/block/extr_ioctl.c___blkdev_driver_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_ioctl.c___blkdev_driver_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__blkdev_driver_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gendisk*, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.block_device*, %struct.block_device** %6, align 8
  %12 = getelementptr inbounds %struct.block_device, %struct.block_device* %11, i32 0, i32 0
  %13 = load %struct.gendisk*, %struct.gendisk** %12, align 8
  store %struct.gendisk* %13, %struct.gendisk** %10, align 8
  %14 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %15 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.block_device*, i32, i32, i64)**
  %19 = load i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)** %18, align 8
  %20 = icmp ne i32 (%struct.block_device*, i32, i32, i64)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.block_device*, i32, i32, i64)**
  %27 = load i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)** %26, align 8
  %28 = load %struct.block_device*, %struct.block_device** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 %27(%struct.block_device* %28, i32 %29, i32 %30, i64 %31)
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @ENOTTY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
