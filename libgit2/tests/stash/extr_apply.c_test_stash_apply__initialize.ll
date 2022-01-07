; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_test_stash_apply__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_test_stash_apply__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@repo = common dso_local global i32 0, align 4
@repo_index = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"nulltoken\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"emeric.fermas@gmail.com\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"stash/what\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"stash/how\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"small\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"stash/who\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"world\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"stash/where\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"meh\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Initial commit\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"goodbye\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"funky world\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"stash/when\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"tomorrow\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"stash/why\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"would anybody use stash?\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"????\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"why\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"....\0A\00", align 1
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_NEW = common dso_local global i32 0, align 4
@GIT_STASH_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_apply__initialize() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @cl_git_sandbox_init_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @repo, align 4
  %3 = load i32, i32* @repo, align 4
  %4 = call i32 @git_repository_index(i32* @repo_index, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @git_signature_new(i32* @signature, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 1323847743, i32 60)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %12 = load i32, i32* @repo_index, align 4
  %13 = call i32 @git_index_add_bypath(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo_index, align 4
  %16 = call i32 @git_index_add_bypath(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo_index, align 4
  %19 = call i32 @git_index_add_bypath(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = load i32, i32* @signature, align 4
  %23 = call i32 @cl_repo_commit_from_index(i32* null, i32 %21, i32 %22, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %24 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %25 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %26 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %27 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %28 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %29 = load i32, i32* @repo_index, align 4
  %30 = call i32 @git_index_add_bypath(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* @repo_index, align 4
  %33 = call i32 @git_index_add_bypath(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @repo_index, align 4
  %36 = call i32 @git_index_add_bypath(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* @repo_index, align 4
  %39 = call i32 @git_index_write(i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %42 = load i32, i32* @repo, align 4
  %43 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %44 = call i32 @assert_status(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @repo, align 4
  %46 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %47 = call i32 @assert_status(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @repo, align 4
  %49 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %50 = call i32 @assert_status(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @repo, align 4
  %52 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %53 = call i32 @assert_status(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @repo, align 4
  %55 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %56 = call i32 @assert_status(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @repo, align 4
  %58 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %59 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @assert_status(i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @repo, align 4
  %63 = load i32, i32* @signature, align 4
  %64 = load i32, i32* @GIT_STASH_INCLUDE_UNTRACKED, align 4
  %65 = call i32 @git_stash_save(i32* %1, i32 %62, i32 %63, i32* null, i32 %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32, i32* @repo, align 4
  %68 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %69 = call i32 @assert_status(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @repo, align 4
  %71 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %72 = call i32 @assert_status(i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @repo, align 4
  %74 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %75 = call i32 @assert_status(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @repo, align 4
  %77 = load i32, i32* @GIT_ENOTFOUND, align 4
  %78 = call i32 @assert_status(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @repo, align 4
  %80 = load i32, i32* @GIT_ENOTFOUND, align 4
  %81 = call i32 @assert_status(i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @repo, align 4
  %83 = load i32, i32* @GIT_ENOTFOUND, align 4
  %84 = call i32 @assert_status(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %83)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init_new(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32*, i32) #1

declare dso_local i32 @git_signature_new(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_index_write(i32) #1

declare dso_local i32 @assert_status(i32, i8*, i32) #1

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
