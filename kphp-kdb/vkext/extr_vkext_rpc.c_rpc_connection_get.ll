; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_connection_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_connection_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_connection = type { i32 }

@rpc_connection_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_connection* @rpc_connection_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_connection**, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @rpc_connection_tree, align 4
  %5 = bitcast i32* %2 to i8*
  %6 = call %struct.rpc_connection** @tree_lookup_value_connection(i32 %4, i8* %5)
  store %struct.rpc_connection** %6, %struct.rpc_connection*** %3, align 8
  %7 = load %struct.rpc_connection**, %struct.rpc_connection*** %3, align 8
  %8 = icmp ne %struct.rpc_connection** %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.rpc_connection**, %struct.rpc_connection*** %3, align 8
  %11 = load %struct.rpc_connection*, %struct.rpc_connection** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi %struct.rpc_connection* [ %11, %9 ], [ null, %12 ]
  ret %struct.rpc_connection* %14
}

declare dso_local %struct.rpc_connection** @tree_lookup_value_connection(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
