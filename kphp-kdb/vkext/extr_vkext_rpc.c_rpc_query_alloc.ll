; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_query_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_query_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i64, double, i32 }

@tree_insert = common dso_local global i32 0, align 4
@total_working_qid = common dso_local global i32 0, align 4
@RPC_MAX_QUERIES = common dso_local global i32 0, align 4
@last_qid = common dso_local global i64 0, align 8
@queries = common dso_local global %struct.rpc_query* null, align 8
@first_qid = common dso_local global i64 0, align 8
@RPC_QUERIES_MASK = common dso_local global i64 0, align 8
@max_query_id = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4
@total_queries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_query* (double)* @rpc_query_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_query* @rpc_query_alloc(double %0) #0 {
  %2 = alloca %struct.rpc_query*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rpc_query*, align 8
  store double %0, double* %3, align 8
  %7 = load i32, i32* @tree_insert, align 4
  %8 = call i32 @ADD_CNT(i32 %7)
  %9 = load i32, i32* @tree_insert, align 4
  %10 = call i32 @START_TIMER(i32 %9)
  %11 = load i32, i32* @total_working_qid, align 4
  %12 = load i32, i32* @RPC_MAX_QUERIES, align 4
  %13 = sdiv i32 %12, 2
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @tree_insert, align 4
  %17 = call i32 @END_TIMER(i32 %16)
  store %struct.rpc_query* null, %struct.rpc_query** %2, align 8
  br label %77

18:                                               ; preds = %1
  %19 = load i64, i64* @last_qid, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* @last_qid, align 8
  br label %21

21:                                               ; preds = %33, %18
  %22 = load %struct.rpc_query*, %struct.rpc_query** @queries, align 8
  %23 = load i64, i64* @last_qid, align 8
  %24 = load i64, i64* @first_qid, align 8
  %25 = sub i64 %23, %24
  %26 = load i64, i64* @RPC_QUERIES_MASK, align 8
  %27 = and i64 %25, %26
  %28 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %22, i64 %27
  %29 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @first_qid, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i64, i64* @last_qid, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* @last_qid, align 8
  br label %21

36:                                               ; preds = %21
  %37 = load i64, i64* @last_qid, align 8
  %38 = load i64, i64* @first_qid, align 8
  %39 = sub i64 %37, %38
  %40 = load i64, i64* @RPC_QUERIES_MASK, align 8
  %41 = and i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @max_query_id, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @max_query_id, align 4
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i64, i64* @last_qid, align 8
  store i64 %50, i64* %5, align 8
  %51 = call i32 (...) @update_precise_now()
  %52 = load %struct.rpc_query*, %struct.rpc_query** @queries, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @first_qid, align 8
  %55 = sub i64 %53, %54
  %56 = load i64, i64* @RPC_QUERIES_MASK, align 8
  %57 = and i64 %55, %56
  %58 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %52, i64 %57
  store %struct.rpc_query* %58, %struct.rpc_query** %6, align 8
  %59 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %60 = call i32 @memset(%struct.rpc_query* %59, i32 0, i32 24)
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %63 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @precise_now, align 4
  %65 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %66 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load double, double* %3, align 8
  %68 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %69 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %68, i32 0, i32 1
  store double %67, double* %69, align 8
  %70 = load i32, i32* @total_working_qid, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @total_working_qid, align 4
  %72 = load i32, i32* @total_queries, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @total_queries, align 4
  %74 = load i32, i32* @tree_insert, align 4
  %75 = call i32 @END_TIMER(i32 %74)
  %76 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  store %struct.rpc_query* %76, %struct.rpc_query** %2, align 8
  br label %77

77:                                               ; preds = %49, %15
  %78 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  ret %struct.rpc_query* %78
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local i32 @update_precise_now(...) #1

declare dso_local i32 @memset(%struct.rpc_query*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
