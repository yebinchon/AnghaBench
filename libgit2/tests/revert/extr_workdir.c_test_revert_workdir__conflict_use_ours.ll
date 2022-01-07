; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__conflict_use_ours.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__conflict_use_ours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@GIT_REVERT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"caf99de3a49827117bb66721010eac461b06a80c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"0ab09ea6d4c3634bdf6c221626d8b6f7dd890767\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"f4e107c230d08a60fb419d19869f1f282b272d9c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"file3.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"0f5bfcf58c558d865da6be0281d7795993646cee\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"file6.txt\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_USE_OURS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"72333f47d4e83616630ff3b0ffe4c0faebcc3c45\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"d1d403d22cbe24592d725f442835cf46fe60c8ac\00", align 1
@repo_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_workdir__conflict_use_ours() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca [4 x %struct.merge_index_entry], align 16
  %7 = alloca [4 x %struct.merge_index_entry], align 16
  %8 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_REVERT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 0
  store i32 33188, i32* %10, align 16
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 2
  store i8* null, i8** %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.1 to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i64 1
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 0
  store i32 33188, i32* %15, align 16
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 2
  store i8* null, i8** %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.3 to i32), i32* %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i64 1
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 0
  store i32 33188, i32* %20, align 16
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 2
  store i8* null, i8** %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.5 to i32), i32* %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i64 1
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 0
  store i32 33188, i32* %25, align 16
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 2
  store i8* null, i8** %27, align 16
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %28, align 8
  %29 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 0
  store i32 33188, i32* %30, align 16
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 2
  store i8* null, i8** %32, align 16
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.1 to i32), i32* %33, align 8
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i64 1
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %34, i32 0, i32 0
  store i32 33188, i32* %35, align 16
  %36 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %34, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %34, i32 0, i32 2
  store i8* null, i8** %37, align 16
  %38 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %34, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.3 to i32), i32* %38, align 8
  %39 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %34, i64 1
  %40 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %39, i32 0, i32 0
  store i32 33188, i32* %40, align 16
  %41 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %39, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %39, i32 0, i32 2
  store i8* null, i8** %42, align 16
  %43 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %39, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.5 to i32), i32* %43, align 8
  %44 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %39, i64 1
  %45 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 0
  store i32 33188, i32* %45, align 16
  %46 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 2
  store i8* null, i8** %47, align 16
  %48 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %48, align 8
  %49 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %50 = load i32, i32* @GIT_CHECKOUT_USE_OURS, align 4
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %55 = load i32, i32* @repo, align 4
  %56 = call i32 @git_commit_lookup(i32** %1, i32 %55, i32* %3)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32, i32* @repo, align 4
  %59 = load i32*, i32** %1, align 8
  %60 = load i32, i32* @GIT_RESET_HARD, align 4
  %61 = call i32 @git_reset(i32 %58, i32* %59, i32 %60, i32* null)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %64 = load i32, i32* @repo, align 4
  %65 = call i32 @git_commit_lookup(i32** %2, i32 %64, i32* %4)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32, i32* @repo, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @git_revert(i32 %67, i32* %68, %struct.TYPE_6__* %5)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32, i32* @repo_index, align 4
  %72 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %73 = call i32 @merge_test_index(i32 %71, %struct.merge_index_entry* %72, i32 4)
  %74 = call i32 @cl_assert(i32 %73)
  %75 = load i32, i32* @repo, align 4
  %76 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %77 = call i32 @merge_test_workdir(i32 %75, %struct.merge_index_entry* %76, i32 4)
  %78 = call i32 @cl_assert(i32 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @git_commit_free(i32* %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @git_commit_free(i32* %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @git_revert(i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @merge_test_workdir(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
