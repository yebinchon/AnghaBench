; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_8__*, %struct.virtio_blk* }
%struct.TYPE_8__ = type { i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)* }
%struct.virtio_blk = type { i32, %struct.virtio_blk*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@vd_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtblk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtblk_remove(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_blk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %6 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %7 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %6, i32 0, i32 1
  %8 = load %struct.virtio_blk*, %struct.virtio_blk** %7, align 8
  store %struct.virtio_blk* %8, %struct.virtio_blk** %3, align 8
  %9 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %12, i32 0, i32 4
  %14 = call i32 @flush_work(i32* %13)
  %15 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %16 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call i32 @del_gendisk(%struct.TYPE_9__* %17)
  %19 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %20 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @blk_cleanup_queue(i32 %23)
  %25 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %26 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %25, i32 0, i32 3
  %27 = call i32 @blk_mq_free_tag_set(i32* %26)
  %28 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %29 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %31, align 8
  %33 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %34 = call i32 %32(%struct.virtio_device* %33)
  %35 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %36 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = call %struct.TYPE_10__* @disk_to_dev(%struct.TYPE_9__* %37)
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @kref_read(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %43 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = call i32 @put_disk(%struct.TYPE_9__* %44)
  %46 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %47 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %49, align 8
  %51 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %52 = call i32 %50(%struct.virtio_device* %51)
  %53 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %54 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %53, i32 0, i32 1
  %55 = load %struct.virtio_blk*, %struct.virtio_blk** %54, align 8
  %56 = call i32 @kfree(%struct.virtio_blk* %55)
  %57 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %58 = call i32 @kfree(%struct.virtio_blk* %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %1
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ida_simple_remove(i32* @vd_index_ida, i32 %62)
  br label %64

64:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local %struct.TYPE_10__* @disk_to_dev(%struct.TYPE_9__*) #1

declare dso_local i32 @put_disk(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.virtio_blk*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
