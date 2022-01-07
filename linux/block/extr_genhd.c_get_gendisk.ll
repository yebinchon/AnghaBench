; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_get_gendisk.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_get_gendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, i32 }
%struct.kobject = type { i32 }
%struct.hd_struct = type { i32 }

@BLOCK_EXT_MAJOR = common dso_local global i64 0, align 8
@bdev_map = common dso_local global i32 0, align 4
@ext_devt_lock = common dso_local global i32 0, align 4
@ext_devt_idr = common dso_local global i32 0, align 4
@GENHD_FL_HIDDEN = common dso_local global i32 0, align 4
@GENHD_FL_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gendisk* @get_gendisk(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.hd_struct*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.gendisk* null, %struct.gendisk** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @MAJOR(i32 %9)
  %11 = load i64, i64* @BLOCK_EXT_MAJOR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @bdev_map, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.kobject* @kobj_lookup(i32 %14, i32 %15, i32* %16)
  store %struct.kobject* %17, %struct.kobject** %7, align 8
  %18 = load %struct.kobject*, %struct.kobject** %7, align 8
  %19 = icmp ne %struct.kobject* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.kobject*, %struct.kobject** %7, align 8
  %22 = call i32 @kobj_to_dev(%struct.kobject* %21)
  %23 = call %struct.gendisk* @dev_to_disk(i32 %22)
  store %struct.gendisk* %23, %struct.gendisk** %6, align 8
  br label %24

24:                                               ; preds = %20, %13
  br label %47

25:                                               ; preds = %2
  %26 = call i32 @spin_lock_bh(i32* @ext_devt_lock)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @MINOR(i32 %27)
  %29 = call i32 @blk_mangle_minor(i32 %28)
  %30 = call %struct.hd_struct* @idr_find(i32* @ext_devt_idr, i32 %29)
  store %struct.hd_struct* %30, %struct.hd_struct** %8, align 8
  %31 = load %struct.hd_struct*, %struct.hd_struct** %8, align 8
  %32 = icmp ne %struct.hd_struct* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load %struct.hd_struct*, %struct.hd_struct** %8, align 8
  %35 = call %struct.gendisk* @part_to_disk(%struct.hd_struct* %34)
  %36 = call i64 @get_disk_and_module(%struct.gendisk* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.hd_struct*, %struct.hd_struct** %8, align 8
  %40 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.hd_struct*, %struct.hd_struct** %8, align 8
  %44 = call %struct.gendisk* @part_to_disk(%struct.hd_struct* %43)
  store %struct.gendisk* %44, %struct.gendisk** %6, align 8
  br label %45

45:                                               ; preds = %38, %33, %25
  %46 = call i32 @spin_unlock_bh(i32* @ext_devt_lock)
  br label %47

47:                                               ; preds = %45, %24
  %48 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %49 = icmp ne %struct.gendisk* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store %struct.gendisk* null, %struct.gendisk** %3, align 8
  br label %86

51:                                               ; preds = %47
  %52 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %53 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %52, i32 0, i32 1
  %54 = call i32 @down_read(i32* %53)
  %55 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %56 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GENHD_FL_HIDDEN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %51
  %62 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %63 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GENHD_FL_UP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %61, %51
  %70 = phi i1 [ true, %51 ], [ %68, %61 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %76 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %75, i32 0, i32 1
  %77 = call i32 @up_read(i32* %76)
  %78 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %79 = call i32 @put_disk_and_module(%struct.gendisk* %78)
  store %struct.gendisk* null, %struct.gendisk** %6, align 8
  br label %84

80:                                               ; preds = %69
  %81 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %82 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %81, i32 0, i32 1
  %83 = call i32 @up_read(i32* %82)
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  store %struct.gendisk* %85, %struct.gendisk** %3, align 8
  br label %86

86:                                               ; preds = %84, %50
  %87 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  ret %struct.gendisk* %87
}

declare dso_local i64 @MAJOR(i32) #1

declare dso_local %struct.kobject* @kobj_lookup(i32, i32, i32*) #1

declare dso_local %struct.gendisk* @dev_to_disk(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.hd_struct* @idr_find(i32*, i32) #1

declare dso_local i32 @blk_mangle_minor(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @get_disk_and_module(%struct.gendisk*) #1

declare dso_local %struct.gendisk* @part_to_disk(%struct.hd_struct*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @put_disk_and_module(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
