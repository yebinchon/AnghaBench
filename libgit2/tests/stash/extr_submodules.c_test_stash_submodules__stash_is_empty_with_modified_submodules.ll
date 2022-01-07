; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_submodules.c_test_stash_submodules__stash_is_empty_with_modified_submodules.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_submodules.c_test_stash_submodules__stash_is_empty_with_modified_submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_stash_submodules__stash_is_empty_with_modified_submodules.smindex = internal global i32* null, align 8
@test_stash_submodules__stash_is_empty_with_modified_submodules.smrepo = internal global i32* null, align 8
@stash_tip_oid = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_STASH_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"submodules/testrepo/README\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"heyheyhey\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@sm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Modify it\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_submodules__stash_is_empty_with_modified_submodules() #0 {
  %1 = load i32, i32* @repo, align 4
  %2 = load i32, i32* @signature, align 4
  %3 = load i32, i32* @GIT_STASH_DEFAULT, align 4
  %4 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %1, i32 %2, i32* null, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @repo, align 4
  %7 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %8 = call i32 @assert_status(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @repo, align 4
  %11 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %12 = call i32 @assert_status(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @sm, align 4
  %14 = call i32 @git_submodule_open(i32** @test_stash_submodules__stash_is_empty_with_modified_submodules.smrepo, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** @test_stash_submodules__stash_is_empty_with_modified_submodules.smrepo, align 8
  %17 = call i32 @git_repository_index(i32** @test_stash_submodules__stash_is_empty_with_modified_submodules.smindex, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** @test_stash_submodules__stash_is_empty_with_modified_submodules.smindex, align 8
  %20 = call i32 @git_index_add_bypath(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** @test_stash_submodules__stash_is_empty_with_modified_submodules.smrepo, align 8
  %23 = call i32 @cl_repo_commit_from_index(i32* null, i32* %22, i32* null, i32 1372350000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32, i32* @repo, align 4
  %25 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %26 = call i32 @assert_status(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @repo, align 4
  %28 = load i32, i32* @signature, align 4
  %29 = load i32, i32* @GIT_STASH_DEFAULT, align 4
  %30 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %27, i32 %28, i32* null, i32 %29)
  %31 = load i32, i32* @GIT_ENOTFOUND, align 4
  %32 = call i32 @cl_git_fail_with(i32 %30, i32 %31)
  %33 = load i32*, i32** @test_stash_submodules__stash_is_empty_with_modified_submodules.smindex, align 8
  %34 = call i32 @git_index_free(i32* %33)
  %35 = load i32*, i32** @test_stash_submodules__stash_is_empty_with_modified_submodules.smrepo, align 8
  %36 = call i32 @git_repository_free(i32* %35)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @assert_status(i32, i8*, i32) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_submodule_open(i32**, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
