; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_create_rpc_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_create_rpc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double }
%struct.rpc_query = type { i64, i64, i32, double, %struct.TYPE_3__, %struct.rpc_query_type, %struct.process_id }
%struct.TYPE_3__ = type { double, i32, i64 }
%struct.rpc_query_type = type { i32 }
%struct.process_id = type { i32 }

@precise_now = common dso_local global double 0.000000e+00, align 8
@rpc_query_hash_table = common dso_local global i32 0, align 4
@rpc_query_timeout_gateway = common dso_local global i32 0, align 4
@CC = common dso_local global %struct.TYPE_4__* null, align 8
@active_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_query* @create_rpc_query(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4, double %5) #0 {
  %7 = alloca %struct.process_id, align 4
  %8 = alloca %struct.rpc_query_type, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.rpc_query*, align 8
  %14 = getelementptr inbounds %struct.process_id, %struct.process_id* %7, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.rpc_query_type, %struct.rpc_query_type* %8, i32 0, i32 0
  store i32 %4, i32* %15, align 4
  store i64 %0, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store double %5, double* %12, align 8
  %16 = call %struct.rpc_query* @zmalloc(i32 64)
  store %struct.rpc_query* %16, %struct.rpc_query** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %19 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %21 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %20, i32 0, i32 6
  %22 = bitcast %struct.process_id* %21 to i8*
  %23 = bitcast %struct.process_id* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %26 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %29 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load double, double* @precise_now, align 8
  %31 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %32 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %31, i32 0, i32 3
  store double %30, double* %32, align 8
  %33 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %34 = call i32 @hash_lookup_rpc_query(i32* @rpc_query_hash_table, %struct.rpc_query* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %40 = call i32 @hash_insert_rpc_query(i32* @rpc_query_hash_table, %struct.rpc_query* %39)
  %41 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %42 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @rpc_query_timeout_gateway, align 4
  %45 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %46 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load double, double* @precise_now, align 8
  %49 = load double, double* %12, align 8
  %50 = fcmp une double %49, 0.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %6
  %52 = load double, double* %12, align 8
  br label %57

53:                                               ; preds = %6
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi double [ %52, %51 ], [ %56, %53 ]
  %59 = fadd double %48, %58
  %60 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %61 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store double %59, double* %62, align 8
  %63 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %64 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %63, i32 0, i32 5
  %65 = bitcast %struct.rpc_query_type* %64 to i8*
  %66 = bitcast %struct.rpc_query_type* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  %68 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %67, i32 0, i32 4
  %69 = call i32 @insert_event_timer(%struct.TYPE_3__* %68)
  %70 = load i32, i32* @active_queries, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @active_queries, align 4
  %72 = load %struct.rpc_query*, %struct.rpc_query** %13, align 8
  ret %struct.rpc_query* %72
}

declare dso_local %struct.rpc_query* @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hash_lookup_rpc_query(i32*, %struct.rpc_query*) #1

declare dso_local i32 @hash_insert_rpc_query(i32*, %struct.rpc_query*) #1

declare dso_local i32 @insert_event_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
