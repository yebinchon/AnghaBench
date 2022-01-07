; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_end_io_read_cloned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_end_io_read_cloned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.packet_stacked_data* }
%struct.packet_stacked_data = type { %struct.TYPE_2__*, %struct.pktcdvd_device* }
%struct.TYPE_2__ = type { i32 }
%struct.pktcdvd_device = type { i32 }

@psd_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @pkt_end_io_read_cloned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_end_io_read_cloned(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.packet_stacked_data*, align 8
  %4 = alloca %struct.pktcdvd_device*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %6, align 8
  store %struct.packet_stacked_data* %7, %struct.packet_stacked_data** %3, align 8
  %8 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %3, align 8
  %9 = getelementptr inbounds %struct.packet_stacked_data, %struct.packet_stacked_data* %8, i32 0, i32 1
  %10 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  store %struct.pktcdvd_device* %10, %struct.pktcdvd_device** %4, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %3, align 8
  %15 = getelementptr inbounds %struct.packet_stacked_data, %struct.packet_stacked_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = call i32 @bio_put(%struct.bio* %18)
  %20 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %3, align 8
  %21 = getelementptr inbounds %struct.packet_stacked_data, %struct.packet_stacked_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @bio_endio(%struct.TYPE_2__* %22)
  %24 = load %struct.packet_stacked_data*, %struct.packet_stacked_data** %3, align 8
  %25 = call i32 @mempool_free(%struct.packet_stacked_data* %24, i32* @psd_pool)
  %26 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %27 = call i32 @pkt_bio_finished(%struct.pktcdvd_device* %26)
  ret void
}

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.TYPE_2__*) #1

declare dso_local i32 @mempool_free(%struct.packet_stacked_data*, i32*) #1

declare dso_local i32 @pkt_bio_finished(%struct.pktcdvd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
