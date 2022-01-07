; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c___conn_get_conn.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c___conn_get_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cluster_bucket = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__conn_get_conn(%struct.rpc_cluster_bucket* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rpc_cluster_bucket*, align 8
  store %struct.rpc_cluster_bucket* %0, %struct.rpc_cluster_bucket** %3, align 8
  %4 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  %5 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rpc_target_insert_target_ext(%struct.TYPE_3__* %18, i32 %23)
  %25 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i64 @rpc_target_lookup_target(%struct.TYPE_3__* %27)
  %29 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %32

31:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %38

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @rpc_target_choose_connection(i64 %36, i32 0)
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i32 @rpc_target_insert_target_ext(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @rpc_target_lookup_target(%struct.TYPE_3__*) #1

declare dso_local i8* @rpc_target_choose_connection(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
