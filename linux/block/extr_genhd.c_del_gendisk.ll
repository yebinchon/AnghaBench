; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_del_gendisk.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_del_gendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.disk_part_iter = type { i32 }
%struct.hd_struct = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DISK_PITER_INCL_EMPTY = common dso_local global i32 0, align 4
@DISK_PITER_REVERSE = common dso_local global i32 0, align 4
@GENHD_FL_UP = common dso_local global i32 0, align 4
@GENHD_FL_HIDDEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bdi\00", align 1
@sysfs_deprecated = common dso_local global i32 0, align 4
@block_depr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_gendisk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.disk_part_iter, align 4
  %4 = alloca %struct.hd_struct*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %5 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %6 = call i32 @blk_integrity_del(%struct.gendisk* %5)
  %7 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %8 = call i32 @disk_del_events(%struct.gendisk* %7)
  %9 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 5
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %13 = load i32, i32* @DISK_PITER_INCL_EMPTY, align 4
  %14 = load i32, i32* @DISK_PITER_REVERSE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @disk_part_iter_init(%struct.disk_part_iter* %3, %struct.gendisk* %12, i32 %15)
  br label %17

17:                                               ; preds = %20, %1
  %18 = call %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter* %3)
  store %struct.hd_struct* %18, %struct.hd_struct** %4, align 8
  %19 = icmp ne %struct.hd_struct* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %22 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %23 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @invalidate_partition(%struct.gendisk* %21, i32 %24)
  %26 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %27 = call i32 @part_devt(%struct.hd_struct* %26)
  %28 = call i32 @bdev_unhash_inode(i32 %27)
  %29 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %30 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %31 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @delete_partition(%struct.gendisk* %29, i32 %32)
  br label %17

34:                                               ; preds = %17
  %35 = call i32 @disk_part_iter_exit(%struct.disk_part_iter* %3)
  %36 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %37 = call i32 @invalidate_partition(%struct.gendisk* %36, i32 0)
  %38 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %39 = call i32 @disk_devt(%struct.gendisk* %38)
  %40 = call i32 @bdev_unhash_inode(i32 %39)
  %41 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %42 = call i32 @set_capacity(%struct.gendisk* %41, i32 0)
  %43 = load i32, i32* @GENHD_FL_UP, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %46 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %50 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %49, i32 0, i32 5
  %51 = call i32 @up_write(i32* %50)
  %52 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %53 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GENHD_FL_HIDDEN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %34
  %59 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %60 = call %struct.TYPE_8__* @disk_to_dev(%struct.gendisk* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @sysfs_remove_link(i32* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %34
  %64 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %65 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %64, i32 0, i32 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %70 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GENHD_FL_HIDDEN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %77 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %76, i32 0, i32 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bdi_unregister(i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %84 = call i32 @blk_unregister_queue(%struct.gendisk* %83)
  br label %87

85:                                               ; preds = %63
  %86 = call i32 @WARN_ON(i32 1)
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %89 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @GENHD_FL_HIDDEN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %96 = call i32 @disk_devt(%struct.gendisk* %95)
  %97 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %98 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @blk_unregister_region(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %94, %87
  %102 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %103 = call i32 @disk_devt(%struct.gendisk* %102)
  %104 = call i32 @blk_invalidate_devt(i32 %103)
  %105 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %106 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @kobject_put(i32 %108)
  %110 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %111 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @kobject_put(i32 %112)
  %114 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %115 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %114, i32 0, i32 1
  %116 = call i32 @part_stat_set_all(%struct.TYPE_9__* %115, i32 0)
  %117 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %118 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* @sysfs_deprecated, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %101
  %123 = load i32*, i32** @block_depr, align 8
  %124 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %125 = call %struct.TYPE_8__* @disk_to_dev(%struct.gendisk* %124)
  %126 = call i8* @dev_name(%struct.TYPE_8__* %125)
  %127 = call i32 @sysfs_remove_link(i32* %123, i8* %126)
  br label %128

128:                                              ; preds = %122, %101
  %129 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %130 = call %struct.TYPE_8__* @disk_to_dev(%struct.gendisk* %129)
  %131 = call i32 @pm_runtime_set_memalloc_noio(%struct.TYPE_8__* %130, i32 0)
  %132 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %133 = call %struct.TYPE_8__* @disk_to_dev(%struct.gendisk* %132)
  %134 = call i32 @device_del(%struct.TYPE_8__* %133)
  ret void
}

declare dso_local i32 @blk_integrity_del(%struct.gendisk*) #1

declare dso_local i32 @disk_del_events(%struct.gendisk*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @disk_part_iter_init(%struct.disk_part_iter*, %struct.gendisk*, i32) #1

declare dso_local %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter*) #1

declare dso_local i32 @invalidate_partition(%struct.gendisk*, i32) #1

declare dso_local i32 @bdev_unhash_inode(i32) #1

declare dso_local i32 @part_devt(%struct.hd_struct*) #1

declare dso_local i32 @delete_partition(%struct.gendisk*, i32) #1

declare dso_local i32 @disk_part_iter_exit(%struct.disk_part_iter*) #1

declare dso_local i32 @disk_devt(%struct.gendisk*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @bdi_unregister(i32) #1

declare dso_local i32 @blk_unregister_queue(%struct.gendisk*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @blk_unregister_region(i32, i32) #1

declare dso_local i32 @blk_invalidate_devt(i32) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @part_stat_set_all(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @pm_runtime_set_memalloc_noio(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @device_del(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
