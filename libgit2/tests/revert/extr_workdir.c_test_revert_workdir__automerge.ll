; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__automerge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__automerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"caf99de3a49827117bb66721010eac461b06a80c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"0ab09ea6d4c3634bdf6c221626d8b6f7dd890767\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"f4e107c230d08a60fb419d19869f1f282b272d9c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"file3.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"0f5bfcf58c558d865da6be0281d7795993646cee\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"file6.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"72333f47d4e83616630ff3b0ffe4c0faebcc3c45\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"d1d403d22cbe24592d725f442835cf46fe60c8ac\00", align 1
@repo_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_workdir__automerge() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct.merge_index_entry], align 16
  %6 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 0
  store i32 33188, i32* %7, align 16
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 2
  store i8* null, i8** %9, align 16
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.1 to i32), i32* %10, align 8
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i64 1
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 0
  store i32 33188, i32* %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 2
  store i8* null, i8** %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.3 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i64 1
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 2
  store i8* null, i8** %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.5 to i32), i32* %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i64 1
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 0
  store i32 33188, i32* %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 2
  store i8* null, i8** %24, align 16
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %25, align 8
  %26 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %27 = load i32, i32* @repo, align 4
  %28 = call i32 @git_commit_lookup(i32** %1, i32 %27, i32* %3)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @repo, align 4
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @GIT_RESET_HARD, align 4
  %33 = call i32 @git_reset(i32 %30, i32* %31, i32 %32, i32* null)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %36 = load i32, i32* @repo, align 4
  %37 = call i32 @git_commit_lookup(i32** %2, i32 %36, i32* %4)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @repo, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_revert(i32 %39, i32* %40, i32* null)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo_index, align 4
  %44 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %45 = call i32 @merge_test_index(i32 %43, %struct.merge_index_entry* %44, i32 4)
  %46 = call i32 @cl_assert(i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @git_commit_free(i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_commit_free(i32* %49)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #1

declare dso_local i32 @git_revert(i32, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
