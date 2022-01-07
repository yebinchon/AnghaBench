; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_recursive.c_test_merge_trees_recursive__merge_base_for_virtual_commit_2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_recursive.c_test_merge_trees_recursive__merge_base_for_virtual_commit_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }

@GIT_MERGE_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"4a06b258fed8a4d15967ec4253ae7366b70f727d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"targetfile.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"b6bd0f9952f396e757d3f91e08c59a7e91707201\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"version.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"f0856993e005c0d8ed2dc7cdc222cc1d89fb3c77\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"2cba583804a4a6fad1baf97c959be447238d1489\00", align 1
@__const.test_merge_trees_recursive__merge_base_for_virtual_commit_2.merge_index_entries = private unnamed_addr constant [4 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }], align 16
@repo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"branchK-1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"branchK-2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_recursive__merge_base_for_virtual_commit_2() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [4 x %struct.merge_index_entry], align 16
  %4 = load i32, i32* @GIT_MERGE_OPTIONS_INIT, align 4
  store i32 %4, i32* %2, align 4
  %5 = bitcast [4 x %struct.merge_index_entry]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x %struct.merge_index_entry]* @__const.test_merge_trees_recursive__merge_base_for_virtual_commit_2.merge_index_entries to i8*), i64 128, i1 false)
  %6 = load i32, i32* @repo, align 4
  %7 = call i32 @merge_commits_from_branches(i32** %1, i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %2)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %11 = call i32 @merge_test_index(i32* %9, %struct.merge_index_entry* %10, i32 4)
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_index_free(i32* %13)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @merge_commits_from_branches(i32**, i32, i8*, i8*, i32*) #2

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
