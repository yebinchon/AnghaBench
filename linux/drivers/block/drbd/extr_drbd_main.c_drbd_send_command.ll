; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_socket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_command(%struct.drbd_peer_device* %0, %struct.drbd_socket* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.drbd_peer_device*, align 8
  %8 = alloca %struct.drbd_socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %7, align 8
  store %struct.drbd_socket* %1, %struct.drbd_socket** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %15 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %18 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drbd_socket*, %struct.drbd_socket** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @__send_command(i32 %16, i32 %21, %struct.drbd_socket* %22, i32 %23, i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.drbd_socket*, %struct.drbd_socket** %8, align 8
  %29 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %13, align 4
  ret i32 %31
}

declare dso_local i32 @__send_command(i32, i32, %struct.drbd_socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
