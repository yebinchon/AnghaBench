; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_rpc_proxy_store_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_rpc_proxy_store_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cluster_bucket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_cluster_bucket*, i8*, i64)*, i8* (%struct.rpc_cluster_bucket*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_proxy_store_init(%struct.rpc_cluster_bucket* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_cluster_bucket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.rpc_cluster_bucket* %0, %struct.rpc_cluster_bucket** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %8 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i8* (%struct.rpc_cluster_bucket*)*, i8* (%struct.rpc_cluster_bucket*)** %10, align 8
  %12 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %13 = call i8* %11(%struct.rpc_cluster_bucket* %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.rpc_cluster_bucket*, i8*, i64)*, i32 (%struct.rpc_cluster_bucket*, i8*, i64)** %21, align 8
  %23 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 %22(%struct.rpc_cluster_bucket* %23, i8* %24, i64 %25)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
