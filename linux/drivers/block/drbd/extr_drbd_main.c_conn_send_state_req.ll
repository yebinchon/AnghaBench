; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_send_state_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_send_state_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%union.drbd_state = type { i32 }
%struct.p_req_state = type { i8*, i8* }

@P_STATE_CHG_REQ = common dso_local global i32 0, align 4
@P_CONN_ST_CHG_REQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conn_send_state_req(%struct.drbd_connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.drbd_state, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %struct.drbd_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drbd_socket*, align 8
  %10 = alloca %struct.p_req_state*, align 8
  %11 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  %12 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %7, align 8
  %13 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %14 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @P_STATE_CHG_REQ, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @P_CONN_ST_CHG_REQ, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %8, align 4
  %23 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %24 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %23, i32 0, i32 1
  store %struct.drbd_socket* %24, %struct.drbd_socket** %9, align 8
  %25 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %26 = load %struct.drbd_socket*, %struct.drbd_socket** %9, align 8
  %27 = call %struct.p_req_state* @conn_prepare_command(%struct.drbd_connection* %25, %struct.drbd_socket* %26)
  store %struct.p_req_state* %27, %struct.p_req_state** %10, align 8
  %28 = load %struct.p_req_state*, %struct.p_req_state** %10, align 8
  %29 = icmp ne %struct.p_req_state* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %48

33:                                               ; preds = %21
  %34 = bitcast %union.drbd_state* %5 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.p_req_state*, %struct.p_req_state** %10, align 8
  %38 = getelementptr inbounds %struct.p_req_state, %struct.p_req_state* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = bitcast %union.drbd_state* %6 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = load %struct.p_req_state*, %struct.p_req_state** %10, align 8
  %43 = getelementptr inbounds %struct.p_req_state, %struct.p_req_state* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %45 = load %struct.drbd_socket*, %struct.drbd_socket** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @conn_send_command(%struct.drbd_connection* %44, %struct.drbd_socket* %45, i32 %46, i32 16, i32* null, i32 0)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %33, %30
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.p_req_state* @conn_prepare_command(%struct.drbd_connection*, %struct.drbd_socket*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @conn_send_command(%struct.drbd_connection*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
