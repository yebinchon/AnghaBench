; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c__drbd_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c__drbd_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_block_ack = type { i32, i32, i8*, i8* }

@C_CONNECTED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_peer_device*, i32, i8*, i32, i8*)* @_drbd_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_drbd_send_ack(%struct.drbd_peer_device* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_peer_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.drbd_socket*, align 8
  %13 = alloca %struct.p_block_ack*, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %15 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @C_CONNECTED, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %60

25:                                               ; preds = %5
  %26 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %27 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.drbd_socket* %29, %struct.drbd_socket** %12, align 8
  %30 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %31 = load %struct.drbd_socket*, %struct.drbd_socket** %12, align 8
  %32 = call %struct.p_block_ack* @drbd_prepare_command(%struct.drbd_peer_device* %30, %struct.drbd_socket* %31)
  store %struct.p_block_ack* %32, %struct.p_block_ack** %13, align 8
  %33 = load %struct.p_block_ack*, %struct.p_block_ack** %13, align 8
  %34 = icmp ne %struct.p_block_ack* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %60

38:                                               ; preds = %25
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.p_block_ack*, %struct.p_block_ack** %13, align 8
  %41 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.p_block_ack*, %struct.p_block_ack** %13, align 8
  %44 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.p_block_ack*, %struct.p_block_ack** %13, align 8
  %47 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %49 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @atomic_inc_return(i32* %51)
  %53 = call i32 @cpu_to_be32(i32 %52)
  %54 = load %struct.p_block_ack*, %struct.p_block_ack** %13, align 8
  %55 = getelementptr inbounds %struct.p_block_ack, %struct.p_block_ack* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %57 = load %struct.drbd_socket*, %struct.drbd_socket** %12, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @drbd_send_command(%struct.drbd_peer_device* %56, %struct.drbd_socket* %57, i32 %58, i32 24, i32* null, i32 0)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %38, %35, %22
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.p_block_ack* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
