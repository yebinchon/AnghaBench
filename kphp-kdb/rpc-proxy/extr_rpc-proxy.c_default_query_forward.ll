; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_query_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_query_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.rpc_cluster_bucket = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.rpc_cluster_bucket*)*, i8* (%struct.rpc_cluster_bucket*)* }

@CC = common dso_local global %struct.TYPE_6__* null, align 8
@RPC_FUN_ON_NET_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_query_forward(%struct.rpc_cluster_bucket* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_cluster_bucket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8*], align 16
  store %struct.rpc_cluster_bucket* %0, %struct.rpc_cluster_bucket** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %9 = call i32 @assert(%struct.rpc_cluster_bucket* %8)
  %10 = call i32 (...) @tl_fetch_error()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  %13 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i8* (%struct.rpc_cluster_bucket*)*, i8* (%struct.rpc_cluster_bucket*)** %16, align 8
  %18 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %19 = call i8* %17(%struct.rpc_cluster_bucket* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %12
  %23 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %24 = bitcast %struct.rpc_cluster_bucket* %23 to i8*
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %24, i8** %25, align 16
  %26 = bitcast i64* %5 to i8*
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* %26, i8** %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @RPC_FUN_ON_NET_FAIL, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %36 = call i32 @RPC_FUN_START(i32 %34, i8** %35)
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %12
  %38 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.rpc_cluster_bucket*)*, i32 (%struct.rpc_cluster_bucket*)** %43, align 8
  %45 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %46 = call i32 %44(%struct.rpc_cluster_bucket* %45)
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @default_query_forward_conn(%struct.rpc_cluster_bucket* %38, i8* %39, i32 %46, i64 %47, i32 1)
  store i32 0, i32* %3, align 4
  br label %50

49:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %37, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @assert(%struct.rpc_cluster_bucket*) #1

declare dso_local i32 @tl_fetch_error(...) #1

declare dso_local i32 @RPC_FUN_START(i32, i8**) #1

declare dso_local i32 @default_query_forward_conn(%struct.rpc_cluster_bucket*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
