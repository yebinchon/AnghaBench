; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__again_after_edit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__again_after_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"3721552e06c4bdc7d478e0674e6304888545d5fd\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"0ab09ea6d4c3634bdf6c221626d8b6f7dd890767\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"f4e107c230d08a60fb419d19869f1f282b272d9c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"file3.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"0f5bfcf58c558d865da6be0281d7795993646cee\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"file6.txt\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"399fb3aba3d9d13f7d40a9254ce4402067ef3149\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"2d440f2b3147d3dc7ad1085813478d6d869d5a4d\00", align 1
@repo_index = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"Reverter\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"reverter@example.org\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Reverted!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_workdir__again_after_edit() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [4 x %struct.merge_index_entry], align 16
  %11 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %10, i64 0, i64 0
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 0
  store i32 33188, i32* %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 2
  store i8* null, i8** %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.1 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i64 1
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 2
  store i8* null, i8** %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.3 to i32), i32* %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i64 1
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 0
  store i32 33188, i32* %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 2
  store i8* null, i8** %24, align 16
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.5 to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i64 1
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 0
  store i32 33188, i32* %27, align 16
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 2
  store i8* null, i8** %29, align 16
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %30, align 8
  %31 = load i32, i32* @repo, align 4
  %32 = call i32 @git_repository_head(i32** %1, i32 %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @repo, align 4
  %37 = call i32 @git_commit_lookup(i32** %2, i32 %36, i32* %5)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @repo, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @GIT_RESET_HARD, align 4
  %42 = call i32 @git_reset(i32 %39, i32* %40, i32 %41, i32* null)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @repo, align 4
  %47 = call i32 @git_commit_lookup(i32** %3, i32 %46, i32* %6)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32, i32* @repo, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_revert(i32 %49, i32* %50, i32* null)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* @repo_index, align 4
  %54 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %10, i64 0, i64 0
  %55 = call i32 @merge_test_index(i32 %53, %struct.merge_index_entry* %54, i32 4)
  %56 = call i32 @cl_assert(i32 %55)
  %57 = load i32, i32* @repo_index, align 4
  %58 = call i32 @git_index_write_tree(i32* %7, i32 %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32, i32* @repo, align 4
  %61 = call i32 @git_tree_lookup(i32** %4, i32 %60, i32* %7)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = call i32 @time(i32* null)
  %64 = call i32 @git_signature_new(i32** %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %63, i32 0)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32, i32* @repo, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @git_commit_create(i32* %8, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* %67, i32* %68, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32* %69, i32 1, i32** %2)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = load i32, i32* @repo, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @git_revert(i32 %72, i32* %73, i32* null)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32, i32* @repo_index, align 4
  %77 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %10, i64 0, i64 0
  %78 = call i32 @merge_test_index(i32 %76, %struct.merge_index_entry* %77, i32 4)
  %79 = call i32 @cl_assert(i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @git_signature_free(i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @git_tree_free(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @git_commit_free(i32* %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @git_commit_free(i32* %86)
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @git_reference_free(i32* %88)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

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
