; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_b_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_b_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i64, %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_barrier_ack = type { i32, i32 }

@C_WF_REPORT_PARAMS = common dso_local global i64 0, align 8
@P_BARRIER_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_send_b_ack(%struct.drbd_connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_socket*, align 8
  %8 = alloca %struct.p_barrier_ack*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %10 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @C_WF_REPORT_PARAMS, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %17 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %16, i32 0, i32 1
  store %struct.drbd_socket* %17, %struct.drbd_socket** %7, align 8
  %18 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %19 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %20 = call %struct.p_barrier_ack* @conn_prepare_command(%struct.drbd_connection* %18, %struct.drbd_socket* %19)
  store %struct.p_barrier_ack* %20, %struct.p_barrier_ack** %8, align 8
  %21 = load %struct.p_barrier_ack*, %struct.p_barrier_ack** %8, align 8
  %22 = icmp ne %struct.p_barrier_ack* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %36

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.p_barrier_ack*, %struct.p_barrier_ack** %8, align 8
  %27 = getelementptr inbounds %struct.p_barrier_ack, %struct.p_barrier_ack* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = load %struct.p_barrier_ack*, %struct.p_barrier_ack** %8, align 8
  %31 = getelementptr inbounds %struct.p_barrier_ack, %struct.p_barrier_ack* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %33 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %34 = load i32, i32* @P_BARRIER_ACK, align 4
  %35 = call i32 @conn_send_command(%struct.drbd_connection* %32, %struct.drbd_socket* %33, i32 %34, i32 8, i32* null, i32 0)
  br label %36

36:                                               ; preds = %24, %23, %14
  ret void
}

declare dso_local %struct.p_barrier_ack* @conn_prepare_command(%struct.drbd_connection*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @conn_send_command(%struct.drbd_connection*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
