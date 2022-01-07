; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_sr_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_sr_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_req_state_reply = type { i32 }

@P_STATE_CHG_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_send_sr_reply(%struct.drbd_peer_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_peer_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_socket*, align 8
  %6 = alloca %struct.p_req_state_reply*, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %8 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.drbd_socket* %10, %struct.drbd_socket** %5, align 8
  %11 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %12 = load %struct.drbd_socket*, %struct.drbd_socket** %5, align 8
  %13 = call %struct.p_req_state_reply* @drbd_prepare_command(%struct.drbd_peer_device* %11, %struct.drbd_socket* %12)
  store %struct.p_req_state_reply* %13, %struct.p_req_state_reply** %6, align 8
  %14 = load %struct.p_req_state_reply*, %struct.p_req_state_reply** %6, align 8
  %15 = icmp ne %struct.p_req_state_reply* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = load %struct.p_req_state_reply*, %struct.p_req_state_reply** %6, align 8
  %20 = getelementptr inbounds %struct.p_req_state_reply, %struct.p_req_state_reply* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %22 = load %struct.drbd_socket*, %struct.drbd_socket** %5, align 8
  %23 = load i32, i32* @P_STATE_CHG_REPLY, align 4
  %24 = call i32 @drbd_send_command(%struct.drbd_peer_device* %21, %struct.drbd_socket* %22, i32 %23, i32 4, i32* null, i32 0)
  br label %25

25:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.p_req_state_reply* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
