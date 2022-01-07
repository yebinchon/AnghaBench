; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_renames.c_test_merge_trees_renames__submodules.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_renames.c_test_merge_trees_renames__submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [41 x i8] c"cd3e8d4aa06bdc781f264171030bc28f2b370fee\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"4dd1ef7569b18d92d93c0a35bb6b93049137b355\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"a2d8d1824c68541cca94ffb90f79291eba495921\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"63ec604d491161ddafdae4179843c26d54bd999a\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"0000000000000000000000000000000000000001\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"submodule1\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"0000000000000000000000000000000000000002\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"0000000000000000000000000000000000000003\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"submodule2\00", align 1
@__const.test_merge_trees_renames__submodules.merge_index_entries = private unnamed_addr constant [7 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 57344, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0) }, %struct.merge_index_entry { i32 57344, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0) }, %struct.merge_index_entry { i32 57344, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0) }], align 16
@repo = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"submodule_rename1\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"submodule_rename2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_renames__submodules() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [7 x %struct.merge_index_entry], align 16
  store i32* null, i32** %2, align 8
  %4 = bitcast [7 x %struct.merge_index_entry]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([7 x %struct.merge_index_entry]* @__const.test_merge_trees_renames__submodules.merge_index_entries to i8*), i64 224, i1 false)
  %5 = load i32, i32* @repo, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @merge_trees_from_branches(i32** %1, i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = getelementptr inbounds [7 x %struct.merge_index_entry], [7 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %11 = call i32 @merge_test_index(i32* %9, %struct.merge_index_entry* %10, i32 7)
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_index_free(i32* %13)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @merge_trees_from_branches(i32**, i32, i8*, i8*, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
