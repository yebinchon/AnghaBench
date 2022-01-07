; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_upstream.c_test_refs_branches_upstream__no_fetch_refspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_upstream.c_test_refs_branches_upstream__no_fetch_refspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"matching\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"refs/heads/test\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"refs/remotes/matching/master\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"matching/master\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"could not determine remote for 'refs/remotes/matching/master'\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"branch.test.remote\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"branch.test.merge\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_upstream__no_fetch_refspec() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @git_remote_create_with_fetchspec(i32** %4, i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @git_remote_add_push(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @git_reference_lookup(i32** %2, i32* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_reference_target(i32* %17)
  %19 = call i32 @git_reference_create(i32** %1, i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %18, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_branch_set_upstream(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 @cl_git_fail(i32 %22)
  %24 = call %struct.TYPE_2__* (...) @git_error_last()
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_repository_config(i32** %5, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_config_set_string(i32* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @git_config_set_string(i32* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* @GIT_ENOTFOUND, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_branch_upstream(i32** %1, i32* %38)
  %40 = call i32 @cl_git_fail_with(i32 %37, i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_reference_free(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_reference_free(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @git_remote_free(i32* %45)
  %47 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_create_with_fetchspec(i32**, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @git_remote_add_push(i32*, i8*, i8*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_branch_set_upstream(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

declare dso_local i32 @git_repository_config(i32**, i32*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_branch_upstream(i32**, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
