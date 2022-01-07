; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.request_queue* }
%struct.request_queue = type { %struct.pktcdvd_device* }

@pkt_make_request = common dso_local global i32 0, align 4
@CD_FRAMESIZE = common dso_local global i32 0, align 4
@PACKET_MAX_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*)* @pkt_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_init_queue(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca %struct.pktcdvd_device*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %2, align 8
  %4 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %5 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = load i32, i32* @pkt_make_request, align 4
  %11 = call i32 @blk_queue_make_request(%struct.request_queue* %9, i32 %10)
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = load i32, i32* @CD_FRAMESIZE, align 4
  %14 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %12, i32 %13)
  %15 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %16 = load i32, i32* @PACKET_MAX_SECTORS, align 4
  %17 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %15, i32 %16)
  %18 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  store %struct.pktcdvd_device* %18, %struct.pktcdvd_device** %20, align 8
  ret void
}

declare dso_local i32 @blk_queue_make_request(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
