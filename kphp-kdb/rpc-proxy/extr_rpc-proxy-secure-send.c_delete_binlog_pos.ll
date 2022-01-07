; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_delete_binlog_pos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c_delete_binlog_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binlog_pos = type { i64, i64, i64 }
%struct.tree_binlog_pos = type { %struct.binlog_pos }

@binlog_pos_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_binlog_pos(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.binlog_pos, align 8
  %6 = alloca %struct.binlog_pos, align 8
  %7 = alloca %struct.tree_binlog_pos*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %5, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %5, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %5, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @binlog_pos_tree, align 4
  %13 = call i32 @tree_delete_binlog_pos(i32 %12, %struct.binlog_pos* byval(%struct.binlog_pos) align 8 %5)
  store i32 %13, i32* @binlog_pos_tree, align 4
  %14 = load i32, i32* @binlog_pos_tree, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  call void @get_cur_binlog_position(%struct.binlog_pos* sret %6, i32 %17)
  %18 = bitcast %struct.binlog_pos* %5 to i8*
  %19 = bitcast %struct.binlog_pos* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @binlog_pos_tree, align 4
  %22 = call %struct.tree_binlog_pos* @tree_get_min_binlog_pos(i32 %21)
  store %struct.tree_binlog_pos* %22, %struct.tree_binlog_pos** %7, align 8
  %23 = load %struct.tree_binlog_pos*, %struct.tree_binlog_pos** %7, align 8
  %24 = call i32 @assert(%struct.tree_binlog_pos* %23)
  %25 = load %struct.tree_binlog_pos*, %struct.tree_binlog_pos** %7, align 8
  %26 = getelementptr inbounds %struct.tree_binlog_pos, %struct.tree_binlog_pos* %25, i32 0, i32 0
  %27 = bitcast %struct.binlog_pos* %5 to i8*
  %28 = bitcast %struct.binlog_pos* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  br label %29

29:                                               ; preds = %20, %16
  %30 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %5, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.binlog_pos, %struct.binlog_pos* %5, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @update_index(i64 %31, i64 %33, i64 %35)
  ret void
}

declare dso_local i32 @tree_delete_binlog_pos(i32, %struct.binlog_pos* byval(%struct.binlog_pos) align 8) #1

declare dso_local void @get_cur_binlog_position(%struct.binlog_pos* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.tree_binlog_pos* @tree_get_min_binlog_pos(i32) #1

declare dso_local i32 @assert(%struct.tree_binlog_pos*) #1

declare dso_local i32 @update_index(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
