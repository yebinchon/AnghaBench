; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__ignore_all.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__ignore_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_SUBMODULE_IGNORE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"just_a_dir\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"not-submodule\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"sm_changed_index\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sm_changed_file\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"sm_changed_untracked_file\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"sm_missing_commits\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"sm_added_and_uncommited\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"submod2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_status__ignore_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_SUBMODULE_IGNORE_ALL, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i32 @rm_submodule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @g_repo, align 4
  %6 = load i32, i32* @GIT_ENOTFOUND, align 4
  %7 = call i32 @refute_submodule_exists(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i32, i32* @GIT_EEXISTS, align 4
  %10 = call i32 @refute_submodule_exists(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i32, i32* @GIT_EEXISTS, align 4
  %13 = call i32 @refute_submodule_exists(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @git_submodule_status(i32* %1, i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %18)
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @git_submodule_status(i32* %1, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %25)
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @git_submodule_status(i32* %1, i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %32)
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load i32, i32* @g_repo, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @git_submodule_status(i32* %1, i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %39)
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @git_submodule_status(i32* %1, i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %46)
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32, i32* @g_repo, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @git_submodule_status(i32* %1, i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %53)
  %55 = call i32 @cl_assert(i32 %54)
  %56 = load i32, i32* @g_repo, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @git_submodule_status(i32* %1, i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %60)
  %62 = call i32 @cl_assert(i32 %61)
  %63 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 493, i32 0, i32* null)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32, i32* @g_repo, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @git_submodule_status(i32* %1, i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %69)
  %71 = call i32 @cl_assert(i32 %70)
  %72 = call i32 @add_submodule_to_index(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @g_repo, align 4
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @git_submodule_status(i32* %1, i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %77)
  %79 = call i32 @cl_assert(i32 %78)
  ret void
}

declare dso_local i32 @rm_submodule(i8*) #1

declare dso_local i32 @refute_submodule_exists(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_status(i32*, i32, i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32) #1

declare dso_local i32 @git_futils_mkdir_relative(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @add_submodule_to_index(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
