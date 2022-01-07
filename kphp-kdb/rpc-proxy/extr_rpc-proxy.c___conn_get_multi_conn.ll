; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c___conn_get_multi_conn.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c___conn_get_multi_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cluster_bucket = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__conn_get_multi_conn(%struct.rpc_cluster_bucket* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_cluster_bucket*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_cluster_bucket* %0, %struct.rpc_cluster_bucket** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %5, align 8
  %9 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %3
  %13 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %5, align 8
  %21 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %5, align 8
  %24 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rpc_target_insert_target_ext(%struct.TYPE_3__* %22, i32 %27)
  %29 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %5, align 8
  %30 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i64 @rpc_target_lookup_target(%struct.TYPE_3__* %31)
  %33 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %36

35:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %45

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %5, align 8
  %39 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8**, i8*** %6, align 8
  %43 = bitcast i8** %42 to i8*
  %44 = call i32 @rpc_target_choose_random_connections(i64 %40, i32 0, i32 %41, i8* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %35
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @rpc_target_insert_target_ext(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @rpc_target_lookup_target(%struct.TYPE_3__*) #1

declare dso_local i32 @rpc_target_choose_random_connections(i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
