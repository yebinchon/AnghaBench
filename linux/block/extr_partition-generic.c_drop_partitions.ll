; ModuleID = '/home/carl/AnghaBench/linux/block/extr_partition-generic.c_drop_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_partition-generic.c_drop_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.block_device = type { i64, i64 }
%struct.disk_part_iter = type { i32 }
%struct.hd_struct = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@DISK_PITER_INCL_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, %struct.block_device*)* @drop_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_partitions(%struct.gendisk* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.disk_part_iter, align 4
  %7 = alloca %struct.hd_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %9 = load %struct.block_device*, %struct.block_device** %5, align 8
  %10 = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.block_device*, %struct.block_device** %5, align 8
  %15 = getelementptr inbounds %struct.block_device, %struct.block_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %13
  %22 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %23 = call i32 @invalidate_partition(%struct.gendisk* %22, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %30 = load i32, i32* @DISK_PITER_INCL_EMPTY, align 4
  %31 = call i32 @disk_part_iter_init(%struct.disk_part_iter* %6, %struct.gendisk* %29, i32 %30)
  br label %32

32:                                               ; preds = %35, %28
  %33 = call %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter* %6)
  store %struct.hd_struct* %33, %struct.hd_struct** %7, align 8
  %34 = icmp ne %struct.hd_struct* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %37 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %38 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @delete_partition(%struct.gendisk* %36, i32 %39)
  br label %32

41:                                               ; preds = %32
  %42 = call i32 @disk_part_iter_exit(%struct.disk_part_iter* %6)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %26, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @invalidate_partition(%struct.gendisk*, i32) #1

declare dso_local i32 @disk_part_iter_init(%struct.disk_part_iter*, %struct.gendisk*, i32) #1

declare dso_local %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter*) #1

declare dso_local i32 @delete_partition(%struct.gendisk*, i32) #1

declare dso_local i32 @disk_part_iter_exit(%struct.disk_part_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
