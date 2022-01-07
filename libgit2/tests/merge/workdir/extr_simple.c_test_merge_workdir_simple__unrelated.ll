; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_simple.c_test_merge_workdir_simple__unrelated.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_simple.c_test_merge_workdir_simple__unrelated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@GIT_MERGE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"233c0919c998ed110a4b6ff36f353aec8b713487\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"added-in-master.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ab6c44a2e84492ad4b41bb6bac87353e9d02ac8b\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"changed-in-branch.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"11deab00b2d3a6f5a3073988ac050c2d7b6655e2\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"changed-in-master.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"4e886e602529caa9ab11d71f86634bd1b6e0de10\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"conflicting.txt\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"ef58fdd8086c243bdc81f99e379acacfd21d32d6\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"new-in-unrelated1.txt\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"948ba6e701c1edab0c2d394fb7c5538334129793\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"new-in-unrelated2.txt\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"dfe3f22baa1f6fce5447901c3086bae368de6bdd\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"removed-in-branch.txt\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"c8f06f2e3bb2964174677e91f0abead0e43c9e5d\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"unchanged.txt\00", align 1
@THEIRS_UNRELATED_PARENT = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@repo_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_workdir_simple__unrelated() #0 {
  %1 = alloca [1 x i32], align 4
  %2 = alloca [1 x i32*], align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca [9 x %struct.merge_index_entry], align 16
  %5 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_MERGE_OPTIONS_INIT to i8*), i64 8, i1 false)
  %6 = getelementptr inbounds [9 x %struct.merge_index_entry], [9 x %struct.merge_index_entry]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 0
  store i32 33188, i32* %7, align 16
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 2
  store i8* null, i8** %9, align 16
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 3
  store i32 ptrtoint ([20 x i8]* @.str.1 to i32), i32* %10, align 8
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i64 1
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 0
  store i32 33188, i32* %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 2
  store i8* null, i8** %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.3 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i64 1
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 2
  store i8* null, i8** %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([22 x i8]* @.str.5 to i32), i32* %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i64 1
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 0
  store i32 33188, i32* %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 2
  store i8* null, i8** %24, align 16
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 3
  store i32 ptrtoint ([22 x i8]* @.str.7 to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i64 1
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 0
  store i32 33188, i32* %27, align 16
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 2
  store i8* null, i8** %29, align 16
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 3
  store i32 ptrtoint ([16 x i8]* @.str.9 to i32), i32* %30, align 8
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i64 1
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 0
  store i32 33188, i32* %32, align 16
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 2
  store i8* null, i8** %34, align 16
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 3
  store i32 ptrtoint ([22 x i8]* @.str.11 to i32), i32* %35, align 8
  %36 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i64 1
  %37 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i32 0, i32 0
  store i32 33188, i32* %37, align 16
  %38 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i32 0, i32 2
  store i8* null, i8** %39, align 16
  %40 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i32 0, i32 3
  store i32 ptrtoint ([22 x i8]* @.str.13 to i32), i32* %40, align 8
  %41 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i64 1
  %42 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i32 0, i32 0
  store i32 33188, i32* %42, align 16
  %43 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i32 0, i32 2
  store i8* null, i8** %44, align 16
  %45 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i32 0, i32 3
  store i32 ptrtoint ([22 x i8]* @.str.15 to i32), i32* %45, align 8
  %46 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i64 1
  %47 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i32 0, i32 0
  store i32 33188, i32* %47, align 16
  %48 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i32 0, i32 2
  store i8* null, i8** %49, align 16
  %50 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.17 to i32), i32* %50, align 8
  %51 = getelementptr inbounds [1 x i32], [1 x i32]* %1, i64 0, i64 0
  %52 = load i32, i32* @THEIRS_UNRELATED_PARENT, align 4
  %53 = call i32 @git_oid_fromstr(i32* %51, i32 %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = getelementptr inbounds [1 x i32*], [1 x i32*]* %2, i64 0, i64 0
  %56 = load i32, i32* @repo, align 4
  %57 = getelementptr inbounds [1 x i32], [1 x i32]* %1, i64 0, i64 0
  %58 = call i32 @git_annotated_commit_lookup(i32** %55, i32 %56, i32* %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @repo, align 4
  %62 = getelementptr inbounds [1 x i32*], [1 x i32*]* %2, i64 0, i64 0
  %63 = call i32 @git_merge(i32 %61, i32** %62, i32 1, %struct.TYPE_4__* %3, i32* null)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32, i32* @repo_index, align 4
  %66 = getelementptr inbounds [9 x %struct.merge_index_entry], [9 x %struct.merge_index_entry]* %4, i64 0, i64 0
  %67 = call i32 @merge_test_index(i32 %65, %struct.merge_index_entry* %66, i32 9)
  %68 = call i32 @cl_assert(i32 %67)
  %69 = getelementptr inbounds [1 x i32*], [1 x i32*]* %2, i64 0, i64 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @git_annotated_commit_free(i32* %70)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i32) #2

declare dso_local i32 @git_annotated_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_merge(i32, i32**, i32, %struct.TYPE_4__*, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
