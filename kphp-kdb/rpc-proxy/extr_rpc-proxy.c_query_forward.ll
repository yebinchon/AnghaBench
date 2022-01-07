; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_query_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_query_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.rpc_cluster_bucket*, i64)* }
%struct.rpc_cluster_bucket = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CC = common dso_local global %struct.TYPE_8__* null, align 8
@CQ = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_forward(i32 %0) #0 {
  %2 = alloca %struct.rpc_cluster_bucket, align 4
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32 (%struct.rpc_cluster_bucket*, i64)*, i32 (%struct.rpc_cluster_bucket*, i64)** %7, align 8
  %9 = call i32 @assert(i32 (%struct.rpc_cluster_bucket*, i64)* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CQ, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @get_free_rpc_qid(i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (%struct.rpc_cluster_bucket*, i64)*, i32 (%struct.rpc_cluster_bucket*, i64)** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 %19(%struct.rpc_cluster_bucket* %2, i64 %20)
  ret i32 %21
}

declare dso_local i32 @assert(i32 (%struct.rpc_cluster_bucket*, i64)*) #1

declare dso_local i64 @get_free_rpc_qid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
