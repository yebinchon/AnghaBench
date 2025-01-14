; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_drequest_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_drequest_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_block_req = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ID_SYNCER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_drequest_csum(%struct.drbd_peer_device* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drbd_peer_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drbd_socket*, align 8
  %15 = alloca %struct.p_block_req*, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %8, align 8
  %17 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.drbd_socket* %19, %struct.drbd_socket** %14, align 8
  %20 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %8, align 8
  %21 = load %struct.drbd_socket*, %struct.drbd_socket** %14, align 8
  %22 = call %struct.p_block_req* @drbd_prepare_command(%struct.drbd_peer_device* %20, %struct.drbd_socket* %21)
  store %struct.p_block_req* %22, %struct.p_block_req** %15, align 8
  %23 = load %struct.p_block_req*, %struct.p_block_req** %15, align 8
  %24 = icmp ne %struct.p_block_req* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %46

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @cpu_to_be64(i32 %29)
  %31 = load %struct.p_block_req*, %struct.p_block_req** %15, align 8
  %32 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ID_SYNCER, align 4
  %34 = load %struct.p_block_req*, %struct.p_block_req** %15, align 8
  %35 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @cpu_to_be32(i32 %36)
  %38 = load %struct.p_block_req*, %struct.p_block_req** %15, align 8
  %39 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %8, align 8
  %41 = load %struct.drbd_socket*, %struct.drbd_socket** %14, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @drbd_send_command(%struct.drbd_peer_device* %40, %struct.drbd_socket* %41, i32 %42, i32 12, i8* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %28, %25
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.p_block_req* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
