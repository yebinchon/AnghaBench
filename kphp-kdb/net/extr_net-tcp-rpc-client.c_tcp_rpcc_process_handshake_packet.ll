; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_process_handshake_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_process_handshake_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rpc_handshake_packet = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.connection = type { i32 }
%struct.raw_message = type { i32 }
%struct.tcp_rpc_data = type { i32, i64, i32, %struct.TYPE_6__ }

@tcp_rpcc_process_handshake_packet.P = internal global %struct.tcp_rpc_handshake_packet zeroinitializer, align 8
@RPC_HANDSHAKE = common dso_local global i64 0, align 8
@PID = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, %struct.raw_message*)* @tcp_rpcc_process_handshake_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_rpcc_process_handshake_packet(%struct.connection* %0, %struct.raw_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.raw_message*, align 8
  %6 = alloca %struct.tcp_rpc_data*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.raw_message* %1, %struct.raw_message** %5, align 8
  %7 = load %struct.connection*, %struct.connection** %4, align 8
  %8 = call %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection* %7)
  store %struct.tcp_rpc_data* %8, %struct.tcp_rpc_data** %6, align 8
  %9 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %10 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %15 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RPC_HANDSHAKE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  store i32 -2, i32* %3, align 4
  br label %66

20:                                               ; preds = %13
  %21 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %22 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 16
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.connection*, %struct.connection** %4, align 8
  %28 = call i32 @tcp_rpcc_send_handshake_error_packet(%struct.connection* %27, i32 -3)
  store i32 -3, i32* %3, align 4
  br label %66

29:                                               ; preds = %20
  %30 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %31 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %32 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rwm_fetch_data(%struct.raw_message* %30, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_process_handshake_packet.P, i32 %33)
  %35 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %42 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %41, i32 0, i32 3
  %43 = call i32 @matches_pid(%struct.TYPE_7__* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_process_handshake_packet.P, i32 0, i32 1), %struct.TYPE_6__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %29
  %46 = load %struct.connection*, %struct.connection** %4, align 8
  %47 = call i32 @tcp_rpcc_send_handshake_error_packet(%struct.connection* %46, i32 -6)
  store i32 -6, i32* %3, align 4
  br label %66

48:                                               ; preds = %29
  %49 = load i64, i64* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_process_handshake_packet.P, i32 0, i32 1, i32 0), align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_process_handshake_packet.P, i32 0, i32 1, i32 0), align 8
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %58 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %57, i32 0, i32 3
  %59 = call i32 @memcpy(%struct.TYPE_6__* %58, %struct.TYPE_7__* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_process_handshake_packet.P, i32 0, i32 1), i32 4)
  %60 = call i32 @matches_pid(%struct.TYPE_7__* @PID, %struct.TYPE_6__* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcc_process_handshake_packet.P, i32 0, i32 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load %struct.connection*, %struct.connection** %4, align 8
  %64 = call i32 @tcp_rpcc_send_handshake_error_packet(%struct.connection* %63, i32 -4)
  store i32 -4, i32* %3, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62, %45, %26, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @tcp_rpcc_send_handshake_error_packet(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_fetch_data(%struct.raw_message*, %struct.tcp_rpc_handshake_packet*, i32) #1

declare dso_local i32 @matches_pid(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
