; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_NegRSDReply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_NegRSDReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.packet_info = type { i32, i32, %struct.p_block_ack* }
%struct.p_block_ack = type { i32, i32, i32 }
%struct.drbd_peer_device = type { %struct.drbd_device* }
%struct.drbd_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@D_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.packet_info*)* @got_NegRSDReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @got_NegRSDReply(%struct.drbd_connection* %0, %struct.packet_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.packet_info*, align 8
  %6 = alloca %struct.drbd_peer_device*, align 8
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.p_block_ack*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.packet_info* %1, %struct.packet_info** %5, align 8
  %11 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %12 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %11, i32 0, i32 2
  %13 = load %struct.p_block_ack*, %struct.p_block_ack** %12, align 8
  store %struct.p_block_ack* %13, %struct.p_block_ack** %10, align 8
  %14 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %15 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %16 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drbd_peer_device* @conn_peer_device(%struct.drbd_connection* %14, i32 %17)
  store %struct.drbd_peer_device* %18, %struct.drbd_peer_device** %6, align 8
  %19 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %20 = icmp ne %struct.drbd_peer_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %26 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %25, i32 0, i32 0
  %27 = load %struct.drbd_device*, %struct.drbd_device** %26, align 8
  store %struct.drbd_device* %27, %struct.drbd_device** %7, align 8
  %28 = load %struct.p_block_ack*, %struct.p_block_ack** %10, align 8
  %29 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be64_to_cpu(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.p_block_ack*, %struct.p_block_ack** %10, align 8
  %33 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %37 = load %struct.p_block_ack*, %struct.p_block_ack** %10, align 8
  %38 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = call i32 @update_peer_seq(%struct.drbd_peer_device* %36, i32 %40)
  %42 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %43 = call i32 @dec_rs_pending(%struct.drbd_device* %42)
  %44 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %45 = load i32, i32* @D_FAILED, align 4
  %46 = call i64 @get_ldev_if_state(%struct.drbd_device* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %24
  %49 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @drbd_rs_complete_io(%struct.drbd_device* %49, i32 %50)
  %52 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %53 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %61 [
    i32 129, label %55
    i32 128, label %60
  ]

55:                                               ; preds = %48
  %56 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @drbd_rs_failed_io(%struct.drbd_device* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %55
  br label %63

61:                                               ; preds = %48
  %62 = call i32 (...) @BUG()
  br label %63

63:                                               ; preds = %61, %60
  %64 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %65 = call i32 @put_ldev(%struct.drbd_device* %64)
  br label %66

66:                                               ; preds = %63, %24
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.drbd_peer_device* @conn_peer_device(%struct.drbd_connection*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @update_peer_seq(%struct.drbd_peer_device*, i32) #1

declare dso_local i32 @dec_rs_pending(%struct.drbd_device*) #1

declare dso_local i64 @get_ldev_if_state(%struct.drbd_device*, i32) #1

declare dso_local i32 @drbd_rs_complete_io(%struct.drbd_device*, i32) #1

declare dso_local i32 @drbd_rs_failed_io(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
