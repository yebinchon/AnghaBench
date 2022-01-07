; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_fd_alloc_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_fd_alloc_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gendisk = type { i32* }

@unit = common dso_local global %struct.TYPE_4__* null, align 8
@amiflop_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@FLOPPY_MAX_SECTORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FD_NODRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gendisk* (i32)* @fd_alloc_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gendisk* @fd_alloc_disk(i32 %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %5, %struct.gendisk** %4, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %7 = icmp ne %struct.gendisk* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %63

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %16 = call i32* @blk_mq_init_sq_queue(i32* %14, i32* @amiflop_mq_ops, i32 2, i32 %15)
  %17 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %18 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %20 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %26 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %60

27:                                               ; preds = %9
  %28 = load i32, i32* @FLOPPY_MAX_SECTORS, align 4
  %29 = mul nsw i32 %28, 512
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kmalloc(i32 %29, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %27
  br label %47

45:                                               ; preds = %27
  %46 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  store %struct.gendisk* %46, %struct.gendisk** %2, align 8
  br label %72

47:                                               ; preds = %44
  %48 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %49 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @blk_cleanup_queue(i32* %50)
  %52 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %53 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = call i32 @blk_mq_free_tag_set(i32* %58)
  br label %60

60:                                               ; preds = %47, %24
  %61 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %62 = call i32 @put_disk(%struct.gendisk* %61)
  br label %63

63:                                               ; preds = %60, %8
  %64 = load i32, i32* @FD_NODRIVE, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 4
  store %struct.gendisk* null, %struct.gendisk** %2, align 8
  br label %72

72:                                               ; preds = %63, %45
  %73 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  ret %struct.gendisk* %73
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32* @blk_mq_init_sq_queue(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
