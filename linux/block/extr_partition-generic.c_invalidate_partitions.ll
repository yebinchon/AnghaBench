; ModuleID = '/home/carl/AnghaBench/linux/block/extr_partition-generic.c_invalidate_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_partition-generic.c_invalidate_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.block_device = type { i64 }
%struct.TYPE_2__ = type { i32 }

@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @invalidate_partitions(%struct.gendisk* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %7 = load %struct.block_device*, %struct.block_device** %5, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %14 = load %struct.block_device*, %struct.block_device** %5, align 8
  %15 = call i32 @drop_partitions(%struct.gendisk* %13, %struct.block_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %12
  %21 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %22 = call i32 @set_capacity(%struct.gendisk* %21, i32 0)
  %23 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %24 = load %struct.block_device*, %struct.block_device** %5, align 8
  %25 = call i32 @check_disk_size_change(%struct.gendisk* %23, %struct.block_device* %24, i32 0)
  %26 = load %struct.block_device*, %struct.block_device** %5, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %29 = call %struct.TYPE_2__* @disk_to_dev(%struct.gendisk* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* @KOBJ_CHANGE, align 4
  %32 = call i32 @kobject_uevent(i32* %30, i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %20, %18, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @drop_partitions(%struct.gendisk*, %struct.block_device*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @check_disk_size_change(%struct.gendisk*, %struct.block_device*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @disk_to_dev(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
