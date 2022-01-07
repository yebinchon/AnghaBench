; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_current_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_current_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_state = type { i32 }

@EIO = common dso_local global i32 0, align 4
@P_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_current_state(%struct.drbd_peer_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_peer_device*, align 8
  %4 = alloca %struct.drbd_socket*, align 8
  %5 = alloca %struct.p_state*, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %3, align 8
  %6 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %7 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.drbd_socket* %9, %struct.drbd_socket** %4, align 8
  %10 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %11 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %12 = call %struct.p_state* @drbd_prepare_command(%struct.drbd_peer_device* %10, %struct.drbd_socket* %11)
  store %struct.p_state* %12, %struct.p_state** %5, align 8
  %13 = load %struct.p_state*, %struct.p_state** %5, align 8
  %14 = icmp ne %struct.p_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_be32(i32 %24)
  %26 = load %struct.p_state*, %struct.p_state** %5, align 8
  %27 = getelementptr inbounds %struct.p_state, %struct.p_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %29 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %30 = load i32, i32* @P_STATE, align 4
  %31 = call i32 @drbd_send_command(%struct.drbd_peer_device* %28, %struct.drbd_socket* %29, i32 %30, i32 4, i32* null, i32 0)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.p_state* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
