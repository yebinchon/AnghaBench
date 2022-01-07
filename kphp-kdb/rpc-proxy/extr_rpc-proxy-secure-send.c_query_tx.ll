; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_query_tx.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_query_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i64 }
%struct.process_id = type { i32 }
%struct.rpc_query_type = type { i64, i64, i64 }
%struct.rpc_query = type { %struct.secure_send_extra* }
%struct.secure_send_extra = type { i32, double, i32, i32, %struct.process_id, i32, i64 }

@CC = common dso_local global %struct.TYPE_5__* null, align 8
@RPC_FUN_QUERY_ON_ANSWER = common dso_local global i64 0, align 8
@RPC_FUN_QUERY_ON_ALARM = common dso_local global i64 0, align 8
@RPC_FUN_QUERY_ON_FREE = common dso_local global i64 0, align 8
@tl_type_none = common dso_local global i32 0, align 4
@secure_send_s0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @query_tx(i64 %0, i64 %1, %struct.process_id* %2, i64 %3, double %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.process_id*, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.rpc_query_type, align 8
  %16 = alloca %struct.rpc_query*, align 8
  %17 = alloca %struct.secure_send_extra*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.process_id* %2, %struct.process_id** %10, align 8
  store i64 %3, i64* %11, align 8
  store double %4, double* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call %struct.TYPE_5__* @get_cluster_by_id(i64 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** @CC, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CC, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CC, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @RPC_FUN_QUERY_ON_ANSWER, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %23, %30
  %32 = getelementptr inbounds %struct.rpc_query_type, %struct.rpc_query_type* %15, i32 0, i32 2
  store i64 %31, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CC, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CC, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @RPC_FUN_QUERY_ON_ALARM, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %36, %43
  %45 = getelementptr inbounds %struct.rpc_query_type, %struct.rpc_query_type* %15, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CC, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CC, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @RPC_FUN_QUERY_ON_FREE, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %49, %56
  %58 = getelementptr inbounds %struct.rpc_query_type, %struct.rpc_query_type* %15, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.process_id*, %struct.process_id** %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* @tl_type_none, align 4
  %63 = load double, double* %12, align 8
  %64 = getelementptr inbounds %struct.process_id, %struct.process_id* %60, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.rpc_query* @create_rpc_query(i64 %59, i32 %65, i64 %61, i32 %62, %struct.rpc_query_type* byval(%struct.rpc_query_type) align 8 %15, double %63)
  store %struct.rpc_query* %66, %struct.rpc_query** %16, align 8
  %67 = load %struct.rpc_query*, %struct.rpc_query** %16, align 8
  %68 = call i32 @assert(%struct.rpc_query* %67)
  %69 = call %struct.secure_send_extra* @zmalloc(i32 40)
  store %struct.secure_send_extra* %69, %struct.secure_send_extra** %17, align 8
  %70 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %71 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %74 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %76 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @malloc(i32 %77)
  %79 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %80 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %82 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %86 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i32 %83, i32* %84, i32 %87)
  %89 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %90 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %89, i32 0, i32 4
  %91 = load %struct.process_id*, %struct.process_id** %10, align 8
  %92 = bitcast %struct.process_id* %90 to i8*
  %93 = bitcast %struct.process_id* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 4 %93, i64 4, i1 false)
  %94 = load double, double* %12, align 8
  %95 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %96 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %95, i32 0, i32 1
  store double %94, double* %96, align 8
  %97 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %98 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  %99 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %100 = load %struct.rpc_query*, %struct.rpc_query** %16, align 8
  %101 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %100, i32 0, i32 0
  store %struct.secure_send_extra* %99, %struct.secure_send_extra** %101, align 8
  %102 = load i32, i32* @secure_send_s0, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @secure_send_s0, align 4
  %104 = call i32 (...) @log_cur_pos()
  %105 = call i32 @insert_binlog_pos(i32 %104, i32 1)
  %106 = call i32 (...) @log_cur_pos()
  %107 = load %struct.secure_send_extra*, %struct.secure_send_extra** %17, align 8
  %108 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  ret void
}

declare dso_local %struct.TYPE_5__* @get_cluster_by_id(i64) #1

declare dso_local %struct.rpc_query* @create_rpc_query(i64, i32, i64, i32, %struct.rpc_query_type* byval(%struct.rpc_query_type) align 8, double) #1

declare dso_local i32 @assert(%struct.rpc_query*) #1

declare dso_local %struct.secure_send_extra* @zmalloc(i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @insert_binlog_pos(i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
