; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_query_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_query_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i64, i32 (%struct.rpc_query*)*, i32, i64 }

@total_working_qid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_query*)* @rpc_query_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_query_delete(%struct.rpc_query* %0) #0 {
  %2 = alloca %struct.rpc_query*, align 8
  store %struct.rpc_query* %0, %struct.rpc_query** %2, align 8
  %3 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @zzefree(i64 %10, i32 %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %17 = call i32 @delete_query_from_queue(%struct.rpc_query* %16)
  %18 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %18, i32 0, i32 1
  %20 = load i32 (%struct.rpc_query*)*, i32 (%struct.rpc_query*)** %19, align 8
  %21 = icmp ne i32 (%struct.rpc_query*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %23, i32 0, i32 1
  %25 = load i32 (%struct.rpc_query*)*, i32 (%struct.rpc_query*)** %24, align 8
  %26 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %27 = call i32 %25(%struct.rpc_query* %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %30 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @total_working_qid, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @total_working_qid, align 4
  ret void
}

declare dso_local i32 @zzefree(i64, i32) #1

declare dso_local i32 @delete_query_from_queue(%struct.rpc_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
