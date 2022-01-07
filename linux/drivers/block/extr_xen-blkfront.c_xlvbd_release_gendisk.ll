; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_xlvbd_release_gendisk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_xlvbd_release_gendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i32, %struct.TYPE_3__*, i32*, i32, %struct.blkfront_ring_info* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.blkfront_ring_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkfront_info*)* @xlvbd_release_gendisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlvbd_release_gendisk(%struct.blkfront_info* %0) #0 {
  %2 = alloca %struct.blkfront_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkfront_ring_info*, align 8
  store %struct.blkfront_info* %0, %struct.blkfront_info** %2, align 8
  %7 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %8 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %72

12:                                               ; preds = %1
  %13 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %14 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @blk_mq_stop_hw_queues(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %36, %12
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %20 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %25 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %24, i32 0, i32 4
  %26 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %26, i64 %28
  store %struct.blkfront_ring_info* %29, %struct.blkfront_ring_info** %6, align 8
  %30 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %31 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %30, i32 0, i32 1
  %32 = call i32 @gnttab_cancel_free_callback(i32* %31)
  %33 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %34 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %33, i32 0, i32 0
  %35 = call i32 @flush_work(i32* %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %41 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @del_gendisk(%struct.TYPE_3__* %42)
  %44 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %45 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  %49 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %50 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @xlbd_release_minors(i32 %54, i32 %55)
  %57 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %58 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @blk_cleanup_queue(i32* %59)
  %61 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %62 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %61, i32 0, i32 3
  %63 = call i32 @blk_mq_free_tag_set(i32* %62)
  %64 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %65 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %67 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @put_disk(%struct.TYPE_3__* %68)
  %70 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %71 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %70, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %71, align 8
  br label %72

72:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32 @blk_mq_stop_hw_queues(i32*) #1

declare dso_local i32 @gnttab_cancel_free_callback(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_3__*) #1

declare dso_local i32 @xlbd_release_minors(i32, i32) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
