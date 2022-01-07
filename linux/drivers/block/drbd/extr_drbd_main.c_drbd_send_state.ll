; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%union.drbd_state = type { i32 }
%struct.p_state = type { i32 }

@EIO = common dso_local global i32 0, align 4
@P_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_state(%struct.drbd_peer_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.drbd_state, align 4
  %5 = alloca %struct.drbd_peer_device*, align 8
  %6 = alloca %struct.drbd_socket*, align 8
  %7 = alloca %struct.p_state*, align 8
  %8 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %5, align 8
  %9 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %10 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.drbd_socket* %12, %struct.drbd_socket** %6, align 8
  %13 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %14 = load %struct.drbd_socket*, %struct.drbd_socket** %6, align 8
  %15 = call %struct.p_state* @drbd_prepare_command(%struct.drbd_peer_device* %13, %struct.drbd_socket* %14)
  store %struct.p_state* %15, %struct.p_state** %7, align 8
  %16 = load %struct.p_state*, %struct.p_state** %7, align 8
  %17 = icmp ne %struct.p_state* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %2
  %22 = bitcast %union.drbd_state* %4 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpu_to_be32(i32 %23)
  %25 = load %struct.p_state*, %struct.p_state** %7, align 8
  %26 = getelementptr inbounds %struct.p_state, %struct.p_state* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %28 = load %struct.drbd_socket*, %struct.drbd_socket** %6, align 8
  %29 = load i32, i32* @P_STATE, align 4
  %30 = call i32 @drbd_send_command(%struct.drbd_peer_device* %27, %struct.drbd_socket* %28, i32 %29, i32 4, i32* null, i32 0)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
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
