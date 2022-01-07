; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_create_rpc_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_create_rpc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { double, i32 }
%struct.rpc_query = type { i32 }
%struct.rpc_query_type = type { i64, i64, i64 }

@CC = common dso_local global %struct.TYPE_8__* null, align 8
@RPC_FUN_QUERY_ON_ANSWER = common dso_local global i64 0, align 8
@RPC_FUN_QUERY_ON_ALARM = common dso_local global i64 0, align 8
@RPC_FUN_QUERY_ON_FREE = common dso_local global i64 0, align 8
@CQ = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_query* @default_create_rpc_query(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rpc_query_type, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @RPC_FUN_QUERY_ON_ANSWER, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %7, %14
  %16 = getelementptr inbounds %struct.rpc_query_type, %struct.rpc_query_type* %3, i32 0, i32 2
  store i64 %15, i64* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @RPC_FUN_QUERY_ON_ALARM, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %20, %27
  %29 = getelementptr inbounds %struct.rpc_query_type, %struct.rpc_query_type* %3, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @RPC_FUN_QUERY_ON_FREE, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %33, %40
  %42 = getelementptr inbounds %struct.rpc_query_type, %struct.rpc_query_type* %3, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %2, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CQ, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CQ, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CQ, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CQ, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = fmul double %60, 1.000000e-03
  %62 = call %struct.rpc_query* @create_rpc_query(i64 %43, i32 %47, i32 %52, i32 %55, %struct.rpc_query_type* byval(%struct.rpc_query_type) align 8 %3, double %61)
  ret %struct.rpc_query* %62
}

declare dso_local %struct.rpc_query* @create_rpc_query(i64, i32, i32, i32, %struct.rpc_query_type* byval(%struct.rpc_query_type) align 8, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
