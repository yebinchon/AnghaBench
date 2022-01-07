; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_default_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_default_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.raw_message = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"rpcc_execute: fd=%d, op=%d, len=%d\0A\00", align 1
@RPC_PING = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4
@tcp_rpcc_default_execute.Q = internal global [12 x i32] zeroinitializer, align 16
@tcp_rpcc_default_execute.P = internal global [12 x i32] zeroinitializer, align 16
@RPC_PONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rpcc_default_execute(%struct.connection* %0, i32 %1, %struct.raw_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.raw_message*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.raw_message* %2, %struct.raw_message** %7, align 8
  %8 = load %struct.connection*, %struct.connection** %5, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %13 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @RPC_PING, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %21 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* @precise_now, align 4
  %26 = load %struct.connection*, %struct.connection** %5, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %29 = call i32 @rwm_fetch_data(%struct.raw_message* %28, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @tcp_rpcc_default_execute.Q, i64 0, i64 0), i32 12)
  %30 = icmp eq i32 %29, 12
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @RPC_PONG, align 4
  store i32 %33, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @tcp_rpcc_default_execute.P, i64 0, i64 0), align 16
  %34 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @tcp_rpcc_default_execute.Q, i64 0, i64 1), align 4
  store i32 %34, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @tcp_rpcc_default_execute.P, i64 0, i64 1), align 4
  %35 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @tcp_rpcc_default_execute.Q, i64 0, i64 2), align 8
  store i32 %35, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @tcp_rpcc_default_execute.P, i64 0, i64 2), align 8
  %36 = load %struct.connection*, %struct.connection** %5, align 8
  %37 = call i32 @tcp_rpc_conn_send_data(%struct.connection* %36, i32 12, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @tcp_rpcc_default_execute.P, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

38:                                               ; preds = %19, %3
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_fetch_data(%struct.raw_message*, i32*, i32) #1

declare dso_local i32 @tcp_rpc_conn_send_data(%struct.connection*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
