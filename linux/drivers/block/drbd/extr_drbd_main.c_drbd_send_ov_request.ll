; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_ov_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_ov_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_block_req = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ID_SYNCER = common dso_local global i32 0, align 4
@P_OV_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_ov_request(%struct.drbd_peer_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_peer_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drbd_socket*, align 8
  %9 = alloca %struct.p_block_req*, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %11 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.drbd_socket* %13, %struct.drbd_socket** %8, align 8
  %14 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %15 = load %struct.drbd_socket*, %struct.drbd_socket** %8, align 8
  %16 = call %struct.p_block_req* @drbd_prepare_command(%struct.drbd_peer_device* %14, %struct.drbd_socket* %15)
  store %struct.p_block_req* %16, %struct.p_block_req** %9, align 8
  %17 = load %struct.p_block_req*, %struct.p_block_req** %9, align 8
  %18 = icmp ne %struct.p_block_req* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @cpu_to_be64(i32 %23)
  %25 = load %struct.p_block_req*, %struct.p_block_req** %9, align 8
  %26 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ID_SYNCER, align 4
  %28 = load %struct.p_block_req*, %struct.p_block_req** %9, align 8
  %29 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = load %struct.p_block_req*, %struct.p_block_req** %9, align 8
  %33 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %35 = load %struct.drbd_socket*, %struct.drbd_socket** %8, align 8
  %36 = load i32, i32* @P_OV_REQUEST, align 4
  %37 = call i32 @drbd_send_command(%struct.drbd_peer_device* %34, %struct.drbd_socket* %35, i32 %36, i32 12, i32* null, i32 0)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %22, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.p_block_req* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
