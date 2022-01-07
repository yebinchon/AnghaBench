; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_handshake.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_handshake = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"rpc_send_handshake: remote_id = %lld\0A\00", align 1
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@NODE_ID = common dso_local global i32 0, align 4
@BINLOG_POSITION = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_handshake(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rpc_handshake*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %6 = load %struct.connection*, %struct.connection** %3, align 8
  %7 = call i64 @get_id_by_connection(%struct.connection* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i64, i64* @Q, align 8
  %15 = inttoptr i64 %14 to %struct.rpc_handshake*
  store %struct.rpc_handshake* %15, %struct.rpc_handshake** %5, align 8
  %16 = load %struct.rpc_handshake*, %struct.rpc_handshake** %5, align 8
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = load i32, i32* @RPC_TYPE_HANDSHAKE, align 4
  %19 = call i64 @rpc_create_query(%struct.rpc_handshake* %16, i32 24, %struct.connection* %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %43

22:                                               ; preds = %13
  %23 = load i32, i32* @NODE_ID, align 4
  %24 = load %struct.rpc_handshake*, %struct.rpc_handshake** %5, align 8
  %25 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.rpc_handshake*, %struct.rpc_handshake** %5, align 8
  %28 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @BINLOG_POSITION, align 4
  %30 = load %struct.rpc_handshake*, %struct.rpc_handshake** %5, align 8
  %31 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @port, align 4
  %33 = load %struct.rpc_handshake*, %struct.rpc_handshake** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.rpc_handshake*, %struct.rpc_handshake** %5, align 8
  %41 = load %struct.connection*, %struct.connection** %3, align 8
  %42 = call i32 @rpc_send_query(%struct.rpc_handshake* %40, %struct.connection* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %22, %21, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @get_id_by_connection(%struct.connection*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i64 @rpc_create_query(%struct.rpc_handshake*, i32, %struct.connection*, i32) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_handshake*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
