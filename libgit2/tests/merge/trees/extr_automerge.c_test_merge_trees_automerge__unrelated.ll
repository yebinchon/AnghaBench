; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_automerge.c_test_merge_trees_automerge__unrelated.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_automerge.c_test_merge_trees_automerge__unrelated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }

@GIT_MERGE_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"233c0919c998ed110a4b6ff36f353aec8b713487\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"added-in-master.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"d07ec190c306ec690bac349e87d01c4358e49bb2\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ab6c44a2e84492ad4b41bb6bac87353e9d02ac8b\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"changed-in-branch.txt\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"11deab00b2d3a6f5a3073988ac050c2d7b6655e2\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"changed-in-master.txt\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"4e886e602529caa9ab11d71f86634bd1b6e0de10\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"conflicting.txt\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"4b253da36a0ae8bfce63aeabd8c5b58429925594\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"ef58fdd8086c243bdc81f99e379acacfd21d32d6\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"new-in-unrelated1.txt\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"948ba6e701c1edab0c2d394fb7c5538334129793\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"new-in-unrelated2.txt\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"dfe3f22baa1f6fce5447901c3086bae368de6bdd\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"removed-in-branch.txt\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"c8f06f2e3bb2964174677e91f0abead0e43c9e5d\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"unchanged.txt\00", align 1
@__const.test_merge_trees_automerge__unrelated.merge_index_entries = private unnamed_addr constant [11 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0) }], align 16
@repo = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@THEIRS_UNRELATED_BRANCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_automerge__unrelated() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [11 x %struct.merge_index_entry], align 16
  %4 = load i32, i32* @GIT_MERGE_OPTIONS_INIT, align 4
  store i32 %4, i32* %2, align 4
  %5 = bitcast [11 x %struct.merge_index_entry]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([11 x %struct.merge_index_entry]* @__const.test_merge_trees_automerge__unrelated.merge_index_entries to i8*), i64 352, i1 false)
  %6 = load i32, i32* @repo, align 4
  %7 = load i32, i32* @THEIRS_UNRELATED_BRANCH, align 4
  %8 = call i32 @merge_trees_from_branches(i32** %1, i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %7, i32* %2)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = getelementptr inbounds [11 x %struct.merge_index_entry], [11 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %12 = call i32 @merge_test_index(i32* %10, %struct.merge_index_entry* %11, i32 11)
  %13 = call i32 @cl_assert(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_index_free(i32* %14)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @merge_trees_from_branches(i32**, i32, i8*, i32, i32*) #2

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
