; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_process_handshake_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_process_handshake_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_handshake_packet = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.connection = type { i32 }
%struct.rpcc_data = type { i32, i64, i32, %struct.TYPE_6__ }

@rpcc_process_handshake_packet.P = internal global %struct.rpc_handshake_packet zeroinitializer, align 8
@RPC_HANDSHAKE = common dso_local global i64 0, align 8
@PID = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @rpcc_process_handshake_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcc_process_handshake_packet(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpcc_data*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = call %struct.rpcc_data* @RPCC_DATA(%struct.connection* %5)
  store %struct.rpcc_data* %6, %struct.rpcc_data** %4, align 8
  %7 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %8 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %13 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RPC_HANDSHAKE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  store i32 -2, i32* %2, align 4
  br label %65

18:                                               ; preds = %11
  %19 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %20 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = call i32 @rpcc_send_handshake_error_packet(%struct.connection* %25, i32 -3)
  store i32 -3, i32* %2, align 4
  br label %65

27:                                               ; preds = %18
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  %30 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %31 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @read_in(i32* %29, %struct.rpc_handshake_packet* @rpcc_process_handshake_packet.P, i32 %32)
  %34 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %35 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %41 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %40, i32 0, i32 3
  %42 = call i32 @matches_pid(%struct.TYPE_7__* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcc_process_handshake_packet.P, i32 0, i32 1), %struct.TYPE_6__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %27
  %45 = load %struct.connection*, %struct.connection** %3, align 8
  %46 = call i32 @rpcc_send_handshake_error_packet(%struct.connection* %45, i32 -6)
  store i32 -6, i32* %2, align 4
  br label %65

47:                                               ; preds = %27
  %48 = load i64, i64* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcc_process_handshake_packet.P, i32 0, i32 1, i32 0), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %52 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcc_process_handshake_packet.P, i32 0, i32 1, i32 0), align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %57 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %56, i32 0, i32 3
  %58 = call i32 @memcpy(%struct.TYPE_6__* %57, %struct.TYPE_7__* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcc_process_handshake_packet.P, i32 0, i32 1), i32 4)
  %59 = call i32 @matches_pid(%struct.TYPE_7__* @PID, %struct.TYPE_6__* getelementptr inbounds (%struct.rpc_handshake_packet, %struct.rpc_handshake_packet* @rpcc_process_handshake_packet.P, i32 0, i32 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load %struct.connection*, %struct.connection** %3, align 8
  %63 = call i32 @rpcc_send_handshake_error_packet(%struct.connection* %62, i32 -4)
  store i32 -4, i32* %2, align 4
  br label %65

64:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %61, %44, %24, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.rpcc_data* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @rpcc_send_handshake_error_packet(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, %struct.rpc_handshake_packet*, i32) #1

declare dso_local i32 @matches_pid(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
