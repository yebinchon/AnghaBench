; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_get_rpc_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_get_rpc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i32 }
%struct.hash_elem_rpc_query = type { %struct.rpc_query* }

@rpc_query_hash_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_query* @get_rpc_query(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hash_elem_rpc_query*, align 8
  store i64 %0, i64* %2, align 8
  %4 = bitcast i64* %2 to i8*
  %5 = call %struct.hash_elem_rpc_query* @hash_lookup_rpc_query(i32* @rpc_query_hash_table, i8* %4)
  store %struct.hash_elem_rpc_query* %5, %struct.hash_elem_rpc_query** %3, align 8
  %6 = load %struct.hash_elem_rpc_query*, %struct.hash_elem_rpc_query** %3, align 8
  %7 = icmp ne %struct.hash_elem_rpc_query* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.hash_elem_rpc_query*, %struct.hash_elem_rpc_query** %3, align 8
  %10 = getelementptr inbounds %struct.hash_elem_rpc_query, %struct.hash_elem_rpc_query* %9, i32 0, i32 0
  %11 = load %struct.rpc_query*, %struct.rpc_query** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi %struct.rpc_query* [ %11, %8 ], [ null, %12 ]
  ret %struct.rpc_query* %14
}

declare dso_local %struct.hash_elem_rpc_query* @hash_lookup_rpc_query(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
