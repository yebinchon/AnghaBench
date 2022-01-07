; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_send_sr_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_send_sr_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_req_state_reply = type { i32 }

@P_STATE_CHG_REPLY = common dso_local global i32 0, align 4
@P_CONN_ST_CHG_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conn_send_sr_reply(%struct.drbd_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_socket*, align 8
  %6 = alloca %struct.p_req_state_reply*, align 8
  %7 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %9 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @P_STATE_CHG_REPLY, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @P_CONN_ST_CHG_REPLY, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %7, align 4
  %18 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %19 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %18, i32 0, i32 1
  store %struct.drbd_socket* %19, %struct.drbd_socket** %5, align 8
  %20 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %21 = load %struct.drbd_socket*, %struct.drbd_socket** %5, align 8
  %22 = call %struct.p_req_state_reply* @conn_prepare_command(%struct.drbd_connection* %20, %struct.drbd_socket* %21)
  store %struct.p_req_state_reply* %22, %struct.p_req_state_reply** %6, align 8
  %23 = load %struct.p_req_state_reply*, %struct.p_req_state_reply** %6, align 8
  %24 = icmp ne %struct.p_req_state_reply* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @cpu_to_be32(i32 %26)
  %28 = load %struct.p_req_state_reply*, %struct.p_req_state_reply** %6, align 8
  %29 = getelementptr inbounds %struct.p_req_state_reply, %struct.p_req_state_reply* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %31 = load %struct.drbd_socket*, %struct.drbd_socket** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @conn_send_command(%struct.drbd_connection* %30, %struct.drbd_socket* %31, i32 %32, i32 4, i32* null, i32 0)
  br label %34

34:                                               ; preds = %25, %16
  ret void
}

declare dso_local %struct.p_req_state_reply* @conn_prepare_command(%struct.drbd_connection*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @conn_send_command(%struct.drbd_connection*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
