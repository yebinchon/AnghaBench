; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_delete_query_from_queue.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_delete_query_from_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i64, i64, i32 }
%struct.rpc_queue = type { i32, i32 }

@query_status_ok = common dso_local global i64 0, align 8
@query_status_error = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_query*)* @delete_query_from_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_query_from_queue(%struct.rpc_query* %0) #0 {
  %2 = alloca %struct.rpc_query*, align 8
  %3 = alloca %struct.rpc_queue*, align 8
  store %struct.rpc_query* %0, %struct.rpc_query** %2, align 8
  %4 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @query_status_ok, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @query_status_error, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14, %8
  %21 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %22 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.rpc_queue* @rpc_queue_get(i64 %23)
  store %struct.rpc_queue* %24, %struct.rpc_queue** %3, align 8
  %25 = load %struct.rpc_queue*, %struct.rpc_queue** %3, align 8
  %26 = icmp ne %struct.rpc_queue* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %struct.rpc_queue*, %struct.rpc_queue** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_queue, %struct.rpc_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %32 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tree_delete_qid(i32 %30, i32 %33)
  %35 = load %struct.rpc_queue*, %struct.rpc_queue** %3, align 8
  %36 = getelementptr inbounds %struct.rpc_queue, %struct.rpc_queue* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rpc_queue*, %struct.rpc_queue** %3, align 8
  %38 = getelementptr inbounds %struct.rpc_queue, %struct.rpc_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %27, %20
  %42 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %43 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %14, %1
  ret void
}

declare dso_local %struct.rpc_queue* @rpc_queue_get(i64) #1

declare dso_local i32 @tree_delete_qid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
