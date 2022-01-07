; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_ping_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_ping_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }

@EIO = common dso_local global i32 0, align 4
@P_PING_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_ping_ack(%struct.drbd_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca %struct.drbd_socket*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %3, align 8
  %5 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %6 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %5, i32 0, i32 0
  store %struct.drbd_socket* %6, %struct.drbd_socket** %4, align 8
  %7 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %8 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %9 = call i32 @conn_prepare_command(%struct.drbd_connection* %7, %struct.drbd_socket* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %16 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %17 = load i32, i32* @P_PING_ACK, align 4
  %18 = call i32 @conn_send_command(%struct.drbd_connection* %15, %struct.drbd_socket* %16, i32 %17, i32 0, i32* null, i32 0)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @conn_prepare_command(%struct.drbd_connection*, %struct.drbd_socket*) #1

declare dso_local i32 @conn_send_command(%struct.drbd_connection*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
