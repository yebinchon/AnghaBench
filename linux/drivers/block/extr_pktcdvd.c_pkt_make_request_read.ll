; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_make_request_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_make_request_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, %struct.packet_stacked_data* }
%struct.packet_stacked_data = type { %struct.bio*, %struct.pktcdvd_device* }

@GFP_NOIO = common dso_local global i32 0, align 4
@pkt_bio_set = common dso_local global i32 0, align 4
@psd_pool = common dso_local global i32 0, align 4
@pkt_end_io_read_cloned = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*, %struct.bio*)* @pkt_make_request_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_make_request_read(%struct.pktcdvd_device* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.packet_stacked_data*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = load i32, i32* @GFP_NOIO, align 4
  %9 = call %struct.bio* @bio_clone_fast(%struct.bio* %7, i32 %8, i32* @pkt_bio_set)
  store %struct.bio* %9, %struct.bio** %5, align 8
  %10 = load i32, i32* @GFP_NOIO, align 4
  %11 = call %struct.packet_stacked_data* @mempool_alloc(i32* @psd_pool, i32 %10)
  store %struct.packet_stacked_data* %11, %struct.packet_stacked_data** %6, align 8
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %13 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %6, align 8
  %14 = getelementptr inbounds %struct.packet_stacked_data, %struct.packet_stacked_data* %13, i32 0, i32 1
  store %struct.pktcdvd_device* %12, %struct.pktcdvd_device** %14, align 8
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %6, align 8
  %17 = getelementptr inbounds %struct.packet_stacked_data, %struct.packet_stacked_data* %16, i32 0, i32 0
  store %struct.bio* %15, %struct.bio** %17, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %20 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bio_set_dev(%struct.bio* %18, i32 %21)
  %23 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %6, align 8
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  store %struct.packet_stacked_data* %23, %struct.packet_stacked_data** %25, align 8
  %26 = load i32, i32* @pkt_end_io_read_cloned, align 4
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = call i64 @bio_sectors(%struct.bio* %29)
  %31 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %32 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %30
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = call i32 @pkt_queue_bio(%struct.pktcdvd_device* %38, %struct.bio* %39)
  ret void
}

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

declare dso_local %struct.packet_stacked_data* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @pkt_queue_bio(%struct.pktcdvd_device*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
