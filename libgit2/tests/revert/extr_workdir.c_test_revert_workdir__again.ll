; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__again.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__again.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"7731926a337c4eaba1e2187d90ebfa0a93659382\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"0ab09ea6d4c3634bdf6c221626d8b6f7dd890767\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"f4e107c230d08a60fb419d19869f1f282b272d9c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"file3.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"0f5bfcf58c558d865da6be0281d7795993646cee\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"file6.txt\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@repo_index = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"Reverter\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"reverter@example.org\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Reverted!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_workdir__again() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [4 x %struct.merge_index_entry], align 16
  %8 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 0
  store i32 33188, i32* %9, align 16
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 2
  store i8* null, i8** %11, align 16
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.1 to i32), i32* %12, align 8
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i64 1
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 0
  store i32 33188, i32* %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 2
  store i8* null, i8** %16, align 16
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.3 to i32), i32* %17, align 8
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i64 1
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 0
  store i32 33188, i32* %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 2
  store i8* null, i8** %21, align 16
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.5 to i32), i32* %22, align 8
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i64 1
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 0
  store i32 33188, i32* %24, align 16
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 2
  store i8* null, i8** %26, align 16
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %27, align 8
  %28 = load i32, i32* @repo, align 4
  %29 = call i32 @git_repository_head(i32** %1, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %33 = call i32 @git_reference_peel(i32** %2, i32* %31, i32 %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @repo, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @GIT_RESET_HARD, align 4
  %38 = call i32 @git_reset(i32 %35, i32* %36, i32 %37, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32, i32* @repo, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @git_revert(i32 %40, i32* %41, i32* null)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @repo_index, align 4
  %45 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %46 = call i32 @merge_test_index(i32 %44, %struct.merge_index_entry* %45, i32 4)
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32, i32* @repo_index, align 4
  %49 = call i32 @git_index_write_tree(i32* %4, i32 %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32, i32* @repo, align 4
  %52 = call i32 @git_tree_lookup(i32** %3, i32 %51, i32* %4)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = call i32 @time(i32* null)
  %55 = call i32 @git_signature_new(i32** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %54, i32 0)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32, i32* @repo, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @git_commit_create(i32* %5, i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %58, i32* %59, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %60, i32 1, i32** %2)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32, i32* @repo, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @git_revert(i32 %63, i32* %64, i32* null)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32, i32* @repo_index, align 4
  %68 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %69 = call i32 @merge_test_index(i32 %67, %struct.merge_index_entry* %68, i32 4)
  %70 = call i32 @cl_assert(i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @git_signature_free(i32* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @git_tree_free(i32* %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @git_commit_free(i32* %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @git_reference_free(i32* %77)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #1

declare dso_local i32 @git_revert(i32, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #1

declare dso_local i32 @git_index_write_tree(i32*, i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @git_commit_create(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32, i32**) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
