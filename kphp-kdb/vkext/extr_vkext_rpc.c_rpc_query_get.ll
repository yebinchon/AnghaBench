; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_query_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_query_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i64 }

@first_qid = common dso_local global i64 0, align 8
@queries = common dso_local global %struct.rpc_query* null, align 8
@RPC_QUERIES_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_query* @rpc_query_get(i64 %0) #0 {
  %2 = alloca %struct.rpc_query*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rpc_query*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @first_qid, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.rpc_query* null, %struct.rpc_query** %2, align 8
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.rpc_query*, %struct.rpc_query** @queries, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @first_qid, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* @RPC_QUERIES_MASK, align 8
  %15 = and i64 %13, %14
  %16 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %10, i64 %15
  store %struct.rpc_query* %16, %struct.rpc_query** %4, align 8
  %17 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = load %struct.rpc_query*, %struct.rpc_query** %4, align 8
  br label %25

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi %struct.rpc_query* [ %23, %22 ], [ null, %24 ]
  store %struct.rpc_query* %26, %struct.rpc_query** %2, align 8
  br label %27

27:                                               ; preds = %25, %8
  %28 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  ret %struct.rpc_query* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
