; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_join.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_join = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"rpc_send_join: c = %p\0A\00", align 1
@max_cluster = common dso_local global i32 0, align 4
@Clusters = common dso_local global i64* null, align 8
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_JOIN = common dso_local global i32 0, align 4
@CC = common dso_local global i64 0, align 8
@host = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@NODE_ID = common dso_local global i64 0, align 8
@CLUSTER_ID = common dso_local global i64 0, align 8
@BINLOG_POSITION = common dso_local global i32 0, align 4
@PROTOCOL_VERSION = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_join(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_join*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %6 = load %struct.connection*, %struct.connection** %3, align 8
  %7 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.connection* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %70, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @max_cluster, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %73

12:                                               ; preds = %8
  %13 = load i64*, i64** @Clusters, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %12
  %20 = load i64, i64* @Q, align 8
  %21 = inttoptr i64 %20 to %struct.rpc_join*
  store %struct.rpc_join* %21, %struct.rpc_join** %5, align 8
  %22 = load %struct.rpc_join*, %struct.rpc_join** %5, align 8
  %23 = load %struct.connection*, %struct.connection** %3, align 8
  %24 = load i32, i32* @RPC_TYPE_JOIN, align 4
  %25 = call i64 @rpc_create_query(%struct.rpc_join* %22, i32 24, %struct.connection* %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %74

28:                                               ; preds = %19
  %29 = load i64*, i64** @Clusters, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* @CC, align 8
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rpc_join*, %struct.rpc_join** %5, align 8
  %38 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* @host, align 4
  %42 = load i32, i32* @port, align 4
  %43 = load %struct.rpc_join*, %struct.rpc_join** %5, align 8
  %44 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @NODE_ID, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i64, i64* @NODE_ID, align 8
  br label %51

49:                                               ; preds = %28
  %50 = load i64, i64* @CLUSTER_ID, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.rpc_join*, %struct.rpc_join** %5, align 8
  %54 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @BINLOG_POSITION, align 4
  %56 = load %struct.rpc_join*, %struct.rpc_join** %5, align 8
  %57 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @PROTOCOL_VERSION, align 4
  %59 = load %struct.rpc_join*, %struct.rpc_join** %5, align 8
  %60 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.rpc_join*, %struct.rpc_join** %5, align 8
  %67 = load %struct.connection*, %struct.connection** %3, align 8
  %68 = call i32 @rpc_send_query(%struct.rpc_join* %66, %struct.connection* %67)
  br label %69

69:                                               ; preds = %51, %12
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %8

73:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %27
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.connection*) #1

declare dso_local i64 @rpc_create_query(%struct.rpc_join*, i32, %struct.connection*, i32) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_join*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
