; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_target = type { i64, %struct.connection*, %struct.connection*, i64, %struct.process_id }
%struct.connection = type { i32 }
%struct.process_id = type { i32 }

@rpc_target_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_target* @rpc_target_alloc(i32 %0) #0 {
  %2 = alloca %struct.process_id, align 4
  %3 = alloca %struct.rpc_target*, align 8
  %4 = getelementptr inbounds %struct.process_id, %struct.process_id* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = call %struct.rpc_target* @zmalloc(i32 40)
  store %struct.rpc_target* %5, %struct.rpc_target** %3, align 8
  %6 = load %struct.rpc_target*, %struct.rpc_target** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %6, i32 0, i32 4
  %8 = bitcast %struct.process_id* %7 to i8*
  %9 = bitcast %struct.process_id* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load %struct.rpc_target*, %struct.rpc_target** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.rpc_target*, %struct.rpc_target** %3, align 8
  %13 = bitcast %struct.rpc_target* %12 to %struct.connection*
  %14 = load %struct.rpc_target*, %struct.rpc_target** %3, align 8
  %15 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %14, i32 0, i32 1
  store %struct.connection* %13, %struct.connection** %15, align 8
  %16 = load %struct.rpc_target*, %struct.rpc_target** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %16, i32 0, i32 2
  store %struct.connection* %13, %struct.connection** %17, align 8
  %18 = load %struct.rpc_target*, %struct.rpc_target** %3, align 8
  %19 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @rpc_target_tree, align 4
  %21 = load %struct.rpc_target*, %struct.rpc_target** %3, align 8
  %22 = call i32 (...) @lrand48()
  %23 = call i32 @tree_insert_rpc_target(i32 %20, %struct.rpc_target* %21, i32 %22)
  store i32 %23, i32* @rpc_target_tree, align 4
  %24 = load %struct.rpc_target*, %struct.rpc_target** %3, align 8
  ret %struct.rpc_target* %24
}

declare dso_local %struct.rpc_target* @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tree_insert_rpc_target(i32, %struct.rpc_target*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
