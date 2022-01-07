; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_IsInSync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_IsInSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.packet_info = type { i32, %struct.p_block_ack* }
%struct.p_block_ack = type { i32, i32, i32 }
%struct.drbd_peer_device = type { %struct.TYPE_2__*, %struct.drbd_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_device = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@BM_BLOCK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.packet_info*)* @got_IsInSync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @got_IsInSync(%struct.drbd_connection* %0, %struct.packet_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.packet_info*, align 8
  %6 = alloca %struct.drbd_peer_device*, align 8
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca %struct.p_block_ack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.packet_info* %1, %struct.packet_info** %5, align 8
  %11 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %12 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %11, i32 0, i32 1
  %13 = load %struct.p_block_ack*, %struct.p_block_ack** %12, align 8
  store %struct.p_block_ack* %13, %struct.p_block_ack** %8, align 8
  %14 = load %struct.p_block_ack*, %struct.p_block_ack** %8, align 8
  %15 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be64_to_cpu(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.p_block_ack*, %struct.p_block_ack** %8, align 8
  %19 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %23 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %24 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.drbd_peer_device* @conn_peer_device(%struct.drbd_connection* %22, i32 %25)
  store %struct.drbd_peer_device* %26, %struct.drbd_peer_device** %6, align 8
  %27 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %28 = icmp ne %struct.drbd_peer_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %79

32:                                               ; preds = %2
  %33 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %34 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %33, i32 0, i32 1
  %35 = load %struct.drbd_device*, %struct.drbd_device** %34, align 8
  store %struct.drbd_device* %35, %struct.drbd_device** %7, align 8
  %36 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %37 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %38 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 89
  %43 = zext i1 %42 to i32
  %44 = call i32 @D_ASSERT(%struct.drbd_device* %36, i32 %43)
  %45 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %46 = load %struct.p_block_ack*, %struct.p_block_ack** %8, align 8
  %47 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be32_to_cpu(i32 %48)
  %50 = call i32 @update_peer_seq(%struct.drbd_peer_device* %45, i32 %49)
  %51 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %52 = call i64 @get_ldev(%struct.drbd_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %32
  %55 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @drbd_rs_complete_io(%struct.drbd_device* %55, i32 %56)
  %58 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @drbd_set_in_sync(%struct.drbd_device* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @BM_BLOCK_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %66 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %70 = call i32 @put_ldev(%struct.drbd_device* %69)
  br label %71

71:                                               ; preds = %54, %32
  %72 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %73 = call i32 @dec_rs_pending(%struct.drbd_device* %72)
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 9
  %76 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %77 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %76, i32 0, i32 1
  %78 = call i32 @atomic_add(i32 %75, i32* %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.drbd_peer_device* @conn_peer_device(%struct.drbd_connection*, i32) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @update_peer_seq(%struct.drbd_peer_device*, i32) #1

declare dso_local i64 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @drbd_rs_complete_io(%struct.drbd_device*, i32) #1

declare dso_local i32 @drbd_set_in_sync(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @dec_rs_pending(%struct.drbd_device*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
