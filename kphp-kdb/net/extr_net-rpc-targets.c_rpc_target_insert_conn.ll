; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_insert_conn.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_insert_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_target = type { i32, %struct.connection*, %struct.connection*, %struct.TYPE_3__ }
%struct.connection = type { %struct.connection*, %struct.connection*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.tree_rpc_target = type { %struct.rpc_target* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

@rpc_target_insert_conn.t = internal global %struct.rpc_target zeroinitializer, align 8
@rpc_targets_cur_host = common dso_local global i64 0, align 8
@rpc_target_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_target_insert_conn(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.tree_rpc_target*, align 8
  %4 = alloca %struct.rpc_target*, align 8
  %5 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %98

11:                                               ; preds = %1
  %12 = call i32 (...) @st_update_host()
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = bitcast %struct.TYPE_3__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_3__* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_conn.t, i32 0, i32 3) to i8*), i8* align 8 %16, i64 8, i1 false)
  %17 = load i64, i64* @rpc_targets_cur_host, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i64, i64* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_conn.t, i32 0, i32 3, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @rpc_targets_cur_host, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_conn.t, i32 0, i32 3, i32 0), align 8
  br label %24

24:                                               ; preds = %22, %19, %11
  %25 = load i32, i32* @rpc_target_tree, align 4
  %26 = call %struct.tree_rpc_target* @tree_lookup_rpc_target(i32 %25, %struct.rpc_target* @rpc_target_insert_conn.t)
  store %struct.tree_rpc_target* %26, %struct.tree_rpc_target** %3, align 8
  %27 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %3, align 8
  %28 = icmp ne %struct.tree_rpc_target* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.tree_rpc_target*, %struct.tree_rpc_target** %3, align 8
  %31 = getelementptr inbounds %struct.tree_rpc_target, %struct.tree_rpc_target* %30, i32 0, i32 0
  %32 = load %struct.rpc_target*, %struct.rpc_target** %31, align 8
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi %struct.rpc_target* [ %32, %29 ], [ null, %33 ]
  store %struct.rpc_target* %35, %struct.rpc_target** %4, align 8
  %36 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %37 = icmp ne %struct.rpc_target* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* getelementptr inbounds (%struct.rpc_target, %struct.rpc_target* @rpc_target_insert_conn.t, i32 0, i32 3, i32 0), align 8
  %40 = call %struct.rpc_target* @rpc_target_alloc(i64 %39)
  store %struct.rpc_target* %40, %struct.rpc_target** %4, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %43 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %42, i32 0, i32 2
  %44 = load %struct.connection*, %struct.connection** %43, align 8
  store %struct.connection* %44, %struct.connection** %5, align 8
  br label %45

45:                                               ; preds = %55, %41
  %46 = load %struct.connection*, %struct.connection** %5, align 8
  %47 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %48 = bitcast %struct.rpc_target* %47 to %struct.connection*
  %49 = icmp ne %struct.connection* %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = load %struct.connection*, %struct.connection** %2, align 8
  %53 = icmp eq %struct.connection* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %98

55:                                               ; preds = %50
  %56 = load %struct.connection*, %struct.connection** %5, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 0
  %58 = load %struct.connection*, %struct.connection** %57, align 8
  store %struct.connection* %58, %struct.connection** %5, align 8
  br label %45

59:                                               ; preds = %45
  %60 = load %struct.connection*, %struct.connection** %2, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 0
  %62 = load %struct.connection*, %struct.connection** %61, align 8
  %63 = icmp ne %struct.connection* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.connection*, %struct.connection** %2, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 1
  %69 = load %struct.connection*, %struct.connection** %68, align 8
  %70 = icmp ne %struct.connection* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %75 = bitcast %struct.rpc_target* %74 to i8*
  %76 = bitcast i8* %75 to %struct.connection*
  %77 = load %struct.connection*, %struct.connection** %2, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 0
  store %struct.connection* %76, %struct.connection** %78, align 8
  %79 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %80 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %79, i32 0, i32 1
  %81 = load %struct.connection*, %struct.connection** %80, align 8
  %82 = load %struct.connection*, %struct.connection** %2, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 1
  store %struct.connection* %81, %struct.connection** %83, align 8
  %84 = load %struct.connection*, %struct.connection** %2, align 8
  %85 = load %struct.connection*, %struct.connection** %2, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 0
  %87 = load %struct.connection*, %struct.connection** %86, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 1
  store %struct.connection* %84, %struct.connection** %88, align 8
  %89 = load %struct.connection*, %struct.connection** %2, align 8
  %90 = load %struct.connection*, %struct.connection** %2, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 1
  %92 = load %struct.connection*, %struct.connection** %91, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 0
  store %struct.connection* %89, %struct.connection** %93, align 8
  %94 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %95 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %59, %54, %10
  ret void
}

declare dso_local i32 @st_update_host(...) #1

declare dso_local %struct.TYPE_4__* @RPCS_DATA(%struct.connection*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.tree_rpc_target* @tree_lookup_rpc_target(i32, %struct.rpc_target*) #1

declare dso_local %struct.rpc_target* @rpc_target_alloc(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
