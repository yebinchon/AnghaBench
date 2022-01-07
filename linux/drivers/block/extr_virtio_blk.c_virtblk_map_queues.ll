; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_map_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_map_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32*, %struct.virtio_blk* }
%struct.virtio_blk = type { i32 }

@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*)* @virtblk_map_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtblk_map_queues(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca %struct.blk_mq_tag_set*, align 8
  %3 = alloca %struct.virtio_blk*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %2, align 8
  %4 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %5 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %4, i32 0, i32 1
  %6 = load %struct.virtio_blk*, %struct.virtio_blk** %5, align 8
  store %struct.virtio_blk* %6, %struct.virtio_blk** %3, align 8
  %7 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %8 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @blk_mq_virtio_map_queues(i32* %11, i32 %14, i32 0)
  ret i32 %15
}

declare dso_local i32 @blk_mq_virtio_map_queues(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
