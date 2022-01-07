; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_process_handshake_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_process_handshake_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_handshake_packet = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.connection = type { i32, i32, i32 }
%struct.rpcs_data = type { i32, i64, i32, i32 }

@rpcs_process_handshake_packet.P = internal global %struct.rpc_handshake_packet zeroinitializer, align 4
@PID = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RPC_HANDSHAKE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"PID mismatch during handshake: local %08x:%d:%d:%d, remote %08x:%d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @rpcs_process_handshake_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcs_process_handshake_packet(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpcs_data*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = call %struct.rpcs_data* @RPCS_DATA(%struct.connection* %5)
  store %struct.rpcs_data* %6, %struct.rpcs_data** %4, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 3), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = load %struct.connection*, %struct.connection** %3, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @init_server_PID(i32 %12, i32 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 3), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  %20 = call i64 (...) @get_my_ipv4()
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 3), align 8
  br label %21

21:                                               ; preds = %19, %9
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %24 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %29 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RPC_HANDSHAKE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %22
  store i32 -2, i32* %2, align 4
  br label %74

34:                                               ; preds = %27
  %35 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %36 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 20
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.connection*, %struct.connection** %3, align 8
  %42 = call i32 @rpcs_send_handshake_error_packet(%struct.connection* %41, i32 -3)
  store i32 -3, i32* %2, align 4
  br label %74

43:                                               ; preds = %34
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 0
  %46 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %47 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @read_in(i32* %45, %struct.rpc_handshake_packet* @rpcs_process_handshake_packet.P, i32 %48)
  %50 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %51 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %57 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %56, i32 0, i32 3
  %58 = call i32 @memcpy(i32* %57, i32* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcs_process_handshake_packet.P, i32 0, i32 1), i32 4)
  %59 = call i32 @matches_pid(%struct.TYPE_4__* @PID, %struct.TYPE_5__* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcs_process_handshake_packet.P, i32 0, i32 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %43
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 3), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 2), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 1), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PID, i32 0, i32 0), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcs_process_handshake_packet.P, i32 0, i32 0, i32 3), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcs_process_handshake_packet.P, i32 0, i32 0, i32 2), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcs_process_handshake_packet.P, i32 0, i32 0, i32 1), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcs_process_handshake_packet.P, i32 0, i32 0, i32 0), align 4
  %70 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = call i32 @rpcs_send_handshake_error_packet(%struct.connection* %71, i32 -4)
  store i32 -4, i32* %2, align 4
  br label %74

73:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %61, %40, %33
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.rpcs_data* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @init_server_PID(i32, i32) #1

declare dso_local i64 @get_my_ipv4(...) #1

declare dso_local i32 @rpcs_send_handshake_error_packet(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, %struct.rpc_handshake_packet*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @matches_pid(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
