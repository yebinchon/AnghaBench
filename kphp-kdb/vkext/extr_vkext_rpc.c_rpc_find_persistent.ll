; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_find_persistent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_find_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server_collection = type { i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.rpc_server_collection* }

@server_collection_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_server_collection* @rpc_find_persistent(i32 %0, i32 %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.rpc_server_collection, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.rpc_server_collection*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %9, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @server_collection_tree, align 4
  %17 = call %struct.TYPE_3__* @tree_lookup_server_collection(i32 %16, %struct.rpc_server_collection* %9)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %10, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %22, align 8
  store %struct.rpc_server_collection* %23, %struct.rpc_server_collection** %11, align 8
  br label %41

24:                                               ; preds = %4
  %25 = call %struct.rpc_server_collection* @zzmalloc0(i32 16)
  store %struct.rpc_server_collection* %25, %struct.rpc_server_collection** %11, align 8
  %26 = call i32 @ADD_PMALLOC(i32 16)
  %27 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %11, align 8
  %28 = call i32 @assert(%struct.rpc_server_collection* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %11, align 8
  %31 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %11, align 8
  %34 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %11, align 8
  %36 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @server_collection_tree, align 4
  %38 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %11, align 8
  %39 = call i32 (...) @lrand48()
  %40 = call i32 @tree_insert_server_collection(i32 %37, %struct.rpc_server_collection* %38, i32 %39)
  store i32 %40, i32* @server_collection_tree, align 4
  br label %41

41:                                               ; preds = %24, %20
  %42 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %11, align 8
  ret %struct.rpc_server_collection* %42
}

declare dso_local %struct.TYPE_3__* @tree_lookup_server_collection(i32, %struct.rpc_server_collection*) #1

declare dso_local %struct.rpc_server_collection* @zzmalloc0(i32) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local i32 @assert(%struct.rpc_server_collection*) #1

declare dso_local i32 @tree_insert_server_collection(i32, %struct.rpc_server_collection*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
