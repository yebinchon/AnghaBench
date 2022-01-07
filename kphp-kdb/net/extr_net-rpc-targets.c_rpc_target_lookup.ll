; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_target = type { %struct.process_id }
%struct.process_id = type { i64 }
%struct.tree_rpc_target = type { %struct.rpc_target* }

@rpc_target_lookup.t = internal global %struct.rpc_target zeroinitializer, align 8
@rpc_targets_cur_host = common dso_local global i64 0, align 8
@rpc_target_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_target* @rpc_target_lookup(%struct.process_id* %0) #0 {
  %2 = alloca %struct.process_id*, align 8
  %3 = alloca %struct.tree_rpc_target*, align 8
  store %struct.process_id* %0, %struct.process_id** %2, align 8
  %4 = load %struct.process_id*, %struct.process_id** %2, align 8
  %5 = call i32 @assert(%struct.process_id* %4)
  %6 = call i32 (...) @st_update_host()
  %7 = load %struct.process_id*, %struct.process_id** %2, align 8
  %8 = bitcast %struct.process_id* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.rpc_target* @rpc_target_lookup.t to i8*), i8* align 8 %8, i64 8, i1 false)
  %9 = load i64, i64* @rpc_targets_cur_host, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup.t, i32 0, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @rpc_targets_cur_host, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_lookup.t, i32 0, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %14, %11, %1
  %17 = load i32, i32* @rpc_target_tree, align 4
  %18 = call %struct.tree_rpc_target* @tree_lookup_rpc_target(i32 %17, %struct.rpc_target* @rpc_target_lookup.t)
  store %struct.tree_rpc_target* %18, %struct.tree_rpc_target** %3, align 8
  %19 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %3, align 8
  %20 = icmp ne %struct.tree_rpc_target* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %3, align 8
  %23 = getelementptr inbounds %struct.tree_rpc_target, %struct.tree_rpc_target* %22, i32 0, i32 0
  %24 = load %struct.rpc_target*, %struct.rpc_target** %23, align 8
  br label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi %struct.rpc_target* [ %24, %21 ], [ null, %25 ]
  ret %struct.rpc_target* %27
}

declare dso_local i32 @assert(%struct.process_id*) #1

declare dso_local i32 @st_update_host(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.tree_rpc_target* @tree_lookup_rpc_target(i32, %struct.rpc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
