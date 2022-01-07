; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-server.c_tcp_rpcs_process_handshake_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-server.c_tcp_rpcs_process_handshake_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rpc_handshake_packet = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.connection = type { i32, i32 }
%struct.raw_message = type { i32 }
%struct.tcp_rpc_data = type { i32, i64, i32, i32 }

@tcp_rpcs_process_handshake_packet.P = internal global %struct.tcp_rpc_handshake_packet zeroinitializer, align 4
@PID = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RPC_HANDSHAKE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"PID mismatch during handshake: local %08x:%d:%d:%d, remote %08x:%d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, %struct.raw_message*)* @tcp_rpcs_process_handshake_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_rpcs_process_handshake_packet(%struct.connection* %0, %struct.raw_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.raw_message*, align 8
  %6 = alloca %struct.tcp_rpc_data*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.raw_message* %1, %struct.raw_message** %5, align 8
  %7 = load %struct.connection*, %struct.connection** %4, align 8
  %8 = call %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection* %7)
  store %struct.tcp_rpc_data* %8, %struct.tcp_rpc_data** %6, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 3), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @init_server_PID(i32 %14, i32 %17)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 3), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = call i64 (...) @get_my_ipv4()
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 3), align 8
  br label %23

23:                                               ; preds = %21, %11
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %26 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %31 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RPC_HANDSHAKE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %24
  store i32 -2, i32* %3, align 4
  br label %75

36:                                               ; preds = %29
  %37 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %38 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 20
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.connection*, %struct.connection** %4, align 8
  %44 = call i32 @tcp_rpcs_send_handshake_error_packet(%struct.connection* %43, i32 -3)
  store i32 -3, i32* %3, align 4
  br label %75

45:                                               ; preds = %36
  %46 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %47 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %48 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @rwm_fetch_data(%struct.raw_message* %46, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_process_handshake_packet.P, i32 %49)
  %51 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %52 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %58 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %57, i32 0, i32 3
  %59 = call i32 @memcpy(i32* %58, i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_process_handshake_packet.P, i32 0, i32 1), i32 4)
  %60 = call i32 @matches_pid(%struct.TYPE_4__* @PID, %struct.TYPE_5__* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_process_handshake_packet.P, i32 0, i32 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %45
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 3), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 2), align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 1), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 0), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_process_handshake_packet.P, i32 0, i32 0, i32 3), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_process_handshake_packet.P, i32 0, i32 0, i32 2), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_process_handshake_packet.P, i32 0, i32 0, i32 1), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_handshake_packet, %struct.tcp_rpc_handshake_packet* @tcp_rpcs_process_handshake_packet.P, i32 0, i32 0, i32 0), align 4
  %71 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.connection*, %struct.connection** %4, align 8
  %73 = call i32 @tcp_rpcs_send_handshake_error_packet(%struct.connection* %72, i32 -4)
  store i32 -4, i32* %3, align 4
  br label %75

74:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %62, %42, %35
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @init_server_PID(i32, i32) #1

declare dso_local i64 @get_my_ipv4(...) #1

declare dso_local i32 @tcp_rpcs_send_handshake_error_packet(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_fetch_data(%struct.raw_message*, %struct.tcp_rpc_handshake_packet*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @matches_pid(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
