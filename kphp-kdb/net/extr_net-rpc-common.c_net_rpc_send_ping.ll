; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-common.c_net_rpc_send_ping.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-common.c_net_rpc_send_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i64, i32 }
%struct.rpcx_data = type { i32 }

@C_RAWMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Sending ping to fd=%d. ping_id = %lld\0A\00", align 1
@net_rpc_send_ping.P = internal global [20 x i32] zeroinitializer, align 16
@RPC_PING = common dso_local global i32 0, align 4
@net_rpc_send_ping.P.1 = internal global [20 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_rpc_send_ping(%struct.connection* %0, i64 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @C_RAWMSG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  store i32 24, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P, i64 0, i64 0), align 16
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.rpcx_data*
  %21 = getelementptr inbounds %struct.rpcx_data, %struct.rpcx_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P, i64 0, i64 1), align 4
  %24 = load i32, i32* @RPC_PING, align 4
  store i32 %24, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P, i64 0, i64 2), align 8
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* bitcast (i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P, i64 0, i64 3) to i64*), align 8
  %26 = call i32 @compute_crc32(i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P, i64 0, i64 0), i32 20)
  store i32 %26, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P, i64 0, i64 5), align 4
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 1
  %29 = call i32 @write_out(i32* %28, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P, i64 0, i64 0), i32 24)
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = call i32 @flush_later(%struct.connection* %30)
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @RPC_PING, align 4
  store i32 %33, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P.1, i64 0, i64 0), align 16
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* bitcast (i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P.1, i64 0, i64 1) to i64*), align 8
  %35 = load %struct.connection*, %struct.connection** %3, align 8
  %36 = call i32 @tcp_rpc_conn_send_data(%struct.connection* %35, i32 12, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @net_rpc_send_ping.P.1, i64 0, i64 0))
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = call i32 @flush_later(%struct.connection* %37)
  br label %39

39:                                               ; preds = %32, %11
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i64) #1

declare dso_local i32 @compute_crc32(i32*, i32) #1

declare dso_local i32 @write_out(i32*, i32*, i32) #1

declare dso_local i32 @flush_later(%struct.connection*) #1

declare dso_local i32 @tcp_rpc_conn_send_data(%struct.connection*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
