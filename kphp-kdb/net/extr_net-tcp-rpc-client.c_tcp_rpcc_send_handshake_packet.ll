; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_send_handshake_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_send_handshake_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rpc_handshake_packet = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.connection = type { i32, i64, i32 }
%struct.tcp_rpc_data = type { %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.connection*)* }

@tcp_rpcc_send_handshake_packet.P = internal global %struct.tcp_rpc_handshake_packet zeroinitializer, align 8
@PID = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RPC_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @tcp_rpcc_send_handshake_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_rpcc_send_handshake_packet(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.tcp_rpc_data*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = call %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection* %4)
  store %struct.tcp_rpc_data* %5, %struct.tcp_rpc_data** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 0), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @init_client_PID(i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 0), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = call i32 (...) @get_my_ipv4()
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %15, %8
  br label %18

18:                                               ; preds = %17, %1
  %19 = call i32 @memset(%struct.tcp_rpc_handshake_packet* @tcp_rpcc_send_handshake_packet.P, i32 0, i32 24)
  %20 = load i32, i32* @RPC_HANDSHAKE, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_send_handshake_packet.P, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_send_handshake_packet.P, i32 0, i32 2), align 8
  %21 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %18
  %27 = load %struct.connection*, %struct.connection** %2, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2130706433
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %36

32:                                               ; preds = %26
  %33 = load %struct.connection*, %struct.connection** %2, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ 0, %31 ], [ %35, %32 ]
  %38 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %3, align 8
  %39 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.connection*, %struct.connection** %2, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %3, align 8
  %45 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %36, %18
  %48 = call i32 @memcpy(i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_send_handshake_packet.P, i32 0, i32 1), %struct.TYPE_4__* @PID, i32 4)
  %49 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %3, align 8
  %50 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %49, i32 0, i32 0
  %51 = call i32 @memcpy(i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_send_handshake_packet.P, i32 0, i32 0), %struct.TYPE_4__* %50, i32 4)
  %52 = load %struct.connection*, %struct.connection** %2, align 8
  %53 = call i32 @tcp_rpc_conn_send_data(%struct.connection* %52, i32 24, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_send_handshake_packet.P)
  %54 = load %struct.connection*, %struct.connection** %2, align 8
  %55 = call %struct.TYPE_5__* @TCP_RPCC_FUNC(%struct.connection* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %56, align 8
  %58 = load %struct.connection*, %struct.connection** %2, align 8
  %59 = call i32 %57(%struct.connection* %58)
  ret i32 0
}

declare dso_local %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @init_client_PID(i32) #1

declare dso_local i32 @get_my_ipv4(...) #1

declare dso_local i32 @memset(%struct.tcp_rpc_handshake_packet*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @tcp_rpc_conn_send_data(%struct.connection*, i32, %struct.tcp_rpc_handshake_packet*) #1

declare dso_local %struct.TYPE_5__* @TCP_RPCC_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
