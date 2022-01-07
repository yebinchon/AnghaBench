; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.virtio_blk* }
%struct.virtio_blk = type { i32 }
%struct.request = type { i32 }
%struct.virtblk_req = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @virtblk_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtblk_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tag_set*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtio_blk*, align 8
  %10 = alloca %struct.virtblk_req*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %5, align 8
  %12 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %11, i32 0, i32 0
  %13 = load %struct.virtio_blk*, %struct.virtio_blk** %12, align 8
  store %struct.virtio_blk* %13, %struct.virtio_blk** %9, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = call %struct.virtblk_req* @blk_mq_rq_to_pdu(%struct.request* %14)
  store %struct.virtblk_req* %15, %struct.virtblk_req** %10, align 8
  %16 = load %struct.virtblk_req*, %struct.virtblk_req** %10, align 8
  %17 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.virtio_blk*, %struct.virtio_blk** %9, align 8
  %20 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sg_init_table(i32 %18, i32 %21)
  ret i32 0
}

declare dso_local %struct.virtblk_req* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
