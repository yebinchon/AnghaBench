; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__ignore_untracked.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__ignore_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_SUBMODULE_IGNORE_UNTRACKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"just_a_dir\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"not-submodule\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"sm_changed_index\00", align 1
@GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@GIT_SUBMODULE_STATUS_WD_MODIFIED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"sm_changed_file\00", align 1
@GIT_SUBMODULE_STATUS_WD_WD_MODIFIED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"sm_changed_untracked_file\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"sm_missing_commits\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"sm_added_and_uncommited\00", align 1
@GIT_SUBMODULE_STATUS_INDEX_ADDED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_DELETED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"submod2\00", align 1
@GIT_SUBMODULE_STATUS_WD_UNINITIALIZED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_status__ignore_untracked() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNTRACKED, align 4
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
  %19 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @git_submodule_status(i32* %1, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @g_repo, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @git_submodule_status(i32* %1, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_WD_MODIFIED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @git_submodule_status(i32* %1, i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %48)
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32, i32* @g_repo, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @git_submodule_status(i32* %1, i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @cl_assert(i32 %59)
  %61 = load i32, i32* @g_repo, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @git_submodule_status(i32* %1, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @GIT_SUBMODULE_STATUS_INDEX_ADDED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @cl_assert(i32 %69)
  %71 = load i32, i32* @g_repo, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @git_submodule_status(i32* %1, i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_DELETED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @cl_assert(i32 %79)
  %81 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 493, i32 0, i32* null)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = load i32, i32* @g_repo, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @git_submodule_status(i32* %1, i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = call i32 @cl_git_pass(i32 %85)
  %87 = load i32, i32* %1, align 4
  %88 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @cl_assert(i32 %91)
  %93 = call i32 @add_submodule_to_index(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @g_repo, align 4
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @git_submodule_status(i32* %1, i32 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = call i32 @cl_git_pass(i32 %96)
  %98 = load i32, i32* %1, align 4
  %99 = load i32, i32* @GIT_SUBMODULE_STATUS_INDEX_MODIFIED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @cl_assert(i32 %102)
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
