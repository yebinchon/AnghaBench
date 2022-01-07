; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_OVResult.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_OVResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.packet_info = type { i32, %struct.p_block_ack* }
%struct.p_block_ack = type { i32, i32, i32, i32 }
%struct.drbd_peer_device = type { %struct.TYPE_3__*, %struct.drbd_device* }
%struct.TYPE_3__ = type { i32 }
%struct.drbd_device = type { i32 }
%struct.drbd_device_work = type { %struct.TYPE_4__, %struct.drbd_device* }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ID_OUT_OF_SYNC = common dso_local global i64 0, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@w_ov_finished = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"kmalloc(dw) failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.packet_info*)* @got_OVResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @got_OVResult(%struct.drbd_connection* %0, %struct.packet_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.packet_info*, align 8
  %6 = alloca %struct.drbd_peer_device*, align 8
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca %struct.p_block_ack*, align 8
  %9 = alloca %struct.drbd_device_work*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.packet_info* %1, %struct.packet_info** %5, align 8
  %12 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %13 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %12, i32 0, i32 1
  %14 = load %struct.p_block_ack*, %struct.p_block_ack** %13, align 8
  store %struct.p_block_ack* %14, %struct.p_block_ack** %8, align 8
  %15 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %16 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %17 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drbd_peer_device* @conn_peer_device(%struct.drbd_connection* %15, i32 %18)
  store %struct.drbd_peer_device* %19, %struct.drbd_peer_device** %6, align 8
  %20 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %21 = icmp ne %struct.drbd_peer_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %119

25:                                               ; preds = %2
  %26 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %27 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %26, i32 0, i32 1
  %28 = load %struct.drbd_device*, %struct.drbd_device** %27, align 8
  store %struct.drbd_device* %28, %struct.drbd_device** %7, align 8
  %29 = load %struct.p_block_ack*, %struct.p_block_ack** %8, align 8
  %30 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be64_to_cpu(i32 %31)
  store i64 %32, i64* %10, align 8
  %33 = load %struct.p_block_ack*, %struct.p_block_ack** %8, align 8
  %34 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %38 = load %struct.p_block_ack*, %struct.p_block_ack** %8, align 8
  %39 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = call i32 @update_peer_seq(%struct.drbd_peer_device* %37, i32 %41)
  %43 = load %struct.p_block_ack*, %struct.p_block_ack** %8, align 8
  %44 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @be64_to_cpu(i32 %45)
  %47 = load i64, i64* @ID_OUT_OF_SYNC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %25
  %50 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @drbd_ov_out_of_sync_found(%struct.drbd_device* %50, i64 %51, i32 %52)
  br label %57

54:                                               ; preds = %25
  %55 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %56 = call i32 @ov_out_of_sync_print(%struct.drbd_device* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %59 = call i32 @get_ldev(%struct.drbd_device* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %119

62:                                               ; preds = %57
  %63 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @drbd_rs_complete_io(%struct.drbd_device* %63, i64 %64)
  %66 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %67 = call i32 @dec_rs_pending(%struct.drbd_device* %66)
  %68 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %69 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %73 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 512
  %76 = icmp eq i32 %75, 512
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %79 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %80 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @drbd_advance_rs_marks(%struct.drbd_device* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %62
  %84 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %85 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %83
  %89 = load i32, i32* @GFP_NOIO, align 4
  %90 = call %struct.drbd_device_work* @kmalloc(i32 16, i32 %89)
  store %struct.drbd_device_work* %90, %struct.drbd_device_work** %9, align 8
  %91 = load %struct.drbd_device_work*, %struct.drbd_device_work** %9, align 8
  %92 = icmp ne %struct.drbd_device_work* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load i32, i32* @w_ov_finished, align 4
  %95 = load %struct.drbd_device_work*, %struct.drbd_device_work** %9, align 8
  %96 = getelementptr inbounds %struct.drbd_device_work, %struct.drbd_device_work* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %99 = load %struct.drbd_device_work*, %struct.drbd_device_work** %9, align 8
  %100 = getelementptr inbounds %struct.drbd_device_work, %struct.drbd_device_work* %99, i32 0, i32 1
  store %struct.drbd_device* %98, %struct.drbd_device** %100, align 8
  %101 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %102 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load %struct.drbd_device_work*, %struct.drbd_device_work** %9, align 8
  %106 = getelementptr inbounds %struct.drbd_device_work, %struct.drbd_device_work* %105, i32 0, i32 0
  %107 = call i32 @drbd_queue_work(i32* %104, %struct.TYPE_4__* %106)
  br label %115

108:                                              ; preds = %88
  %109 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %110 = call i32 @drbd_err(%struct.drbd_device* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %112 = call i32 @ov_out_of_sync_print(%struct.drbd_device* %111)
  %113 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %114 = call i32 @drbd_resync_finished(%struct.drbd_device* %113)
  br label %115

115:                                              ; preds = %108, %93
  br label %116

116:                                              ; preds = %115, %83
  %117 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %118 = call i32 @put_ldev(%struct.drbd_device* %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %61, %22
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.drbd_peer_device* @conn_peer_device(%struct.drbd_connection*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @update_peer_seq(%struct.drbd_peer_device*, i32) #1

declare dso_local i32 @drbd_ov_out_of_sync_found(%struct.drbd_device*, i64, i32) #1

declare dso_local i32 @ov_out_of_sync_print(%struct.drbd_device*) #1

declare dso_local i32 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @drbd_rs_complete_io(%struct.drbd_device*, i64) #1

declare dso_local i32 @dec_rs_pending(%struct.drbd_device*) #1

declare dso_local i32 @drbd_advance_rs_marks(%struct.drbd_device*, i32) #1

declare dso_local %struct.drbd_device_work* @kmalloc(i32, i32) #1

declare dso_local i32 @drbd_queue_work(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*) #1

declare dso_local i32 @drbd_resync_finished(%struct.drbd_device*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
