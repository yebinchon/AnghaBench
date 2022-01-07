; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_blk_alloc_devt.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_blk_alloc_devt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i64 }
%struct.gendisk = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ext_devt_lock = common dso_local global i32 0, align 4
@ext_devt_idr = common dso_local global i32 0, align 4
@NR_EXT_DEVT = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BLOCK_EXT_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_alloc_devt(%struct.hd_struct* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hd_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca i32, align 4
  store %struct.hd_struct* %0, %struct.hd_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %9 = call %struct.gendisk* @part_to_disk(%struct.hd_struct* %8)
  store %struct.gendisk* %9, %struct.gendisk** %6, align 8
  %10 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %11 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %19 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %25 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @MKDEV(i32 %20, i64 %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %60

30:                                               ; preds = %2
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @idr_preload(i32 %31)
  %33 = call i32 @spin_lock_bh(i32* @ext_devt_lock)
  %34 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %35 = load i32, i32* @NR_EXT_DEVT, align 4
  %36 = load i32, i32* @GFP_NOWAIT, align 4
  %37 = call i32 @idr_alloc(i32* @ext_devt_idr, %struct.hd_struct* %34, i32 0, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = call i32 @spin_unlock_bh(i32* @ext_devt_lock)
  %39 = call i32 (...) @idr_preload_end()
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %30
  %55 = load i32, i32* @BLOCK_EXT_MAJOR, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @blk_mangle_minor(i32 %56)
  %58 = call i32 @MKDEV(i32 %55, i64 %57)
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %52, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.gendisk* @part_to_disk(%struct.hd_struct*) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.hd_struct*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i64 @blk_mangle_minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
