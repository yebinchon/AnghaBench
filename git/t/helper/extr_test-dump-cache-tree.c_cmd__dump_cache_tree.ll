; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-dump-cache-tree.c_cmd__dump_cache_tree.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-dump-cache-tree.c_cmd__dump_cache_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.cache_tree* }
%struct.cache_tree = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unable to read index file\00", align 1
@the_index = common dso_local global %struct.index_state zeroinitializer, align 8
@WRITE_TREE_DRY_RUN = common dso_local global i32 0, align 4
@active_cache_tree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__dump_cache_tree(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.index_state, align 8
  %6 = alloca %struct.cache_tree*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = call %struct.cache_tree* (...) @cache_tree()
  store %struct.cache_tree* %7, %struct.cache_tree** %6, align 8
  %8 = call i32 (...) @setup_git_directory()
  %9 = call i64 (...) @read_cache()
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = bitcast %struct.index_state* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.index_state* @the_index to i8*), i64 8, i1 false)
  %15 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %5, i32 0, i32 0
  store %struct.cache_tree* %15, %struct.cache_tree** %16, align 8
  %17 = load i32, i32* @WRITE_TREE_DRY_RUN, align 4
  %18 = call i32 @cache_tree_update(%struct.index_state* %5, i32 %17)
  %19 = load i32, i32* @active_cache_tree, align 4
  %20 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %21 = call i32 @dump_cache_tree(i32 %19, %struct.cache_tree* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret i32 %21
}

declare dso_local %struct.cache_tree* @cache_tree(...) #1

declare dso_local i32 @setup_git_directory(...) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @die(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cache_tree_update(%struct.index_state*, i32) #1

declare dso_local i32 @dump_cache_tree(i32, %struct.cache_tree*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
