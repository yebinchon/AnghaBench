; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__ignore_none.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__ignore_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@GIT_SUBMODULE_STATUS_WD_UNTRACKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"sm_missing_commits\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"sm_added_and_uncommited\00", align 1
@GIT_SUBMODULE_STATUS_INDEX_ADDED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_DELETED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"submod2\00", align 1
@GIT_SUBMODULE_STATUS_WD_UNINITIALIZED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_INDEX_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_status__ignore_none() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @rm_submodule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @g_repo, align 4
  %4 = load i32, i32* @GIT_ENOTFOUND, align 4
  %5 = call i32 @refute_submodule_exists(i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @g_repo, align 4
  %7 = load i32, i32* @GIT_EEXISTS, align 4
  %8 = call i32 @refute_submodule_exists(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32, i32* @GIT_EEXISTS, align 4
  %11 = call i32 @refute_submodule_exists(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @get_submodule_status(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @get_submodule_status(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = call i32 @get_submodule_status(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_WD_MODIFIED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32, i32* @g_repo, align 4
  %37 = call i32 @get_submodule_status(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNTRACKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = call i32 @get_submodule_status(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = load i32, i32* @g_repo, align 4
  %53 = call i32 @get_submodule_status(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @GIT_SUBMODULE_STATUS_INDEX_ADDED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @cl_assert(i32 %58)
  %60 = load i32, i32* @g_repo, align 4
  %61 = call i32 @get_submodule_status(i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_DELETED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @cl_assert(i32 %66)
  %68 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 493, i32 0, i32* null)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load i32, i32* @g_repo, align 4
  %71 = call i32 @get_submodule_status(i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @cl_assert(i32 %76)
  %78 = call i32 @add_submodule_to_index(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @g_repo, align 4
  %80 = call i32 @get_submodule_status(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* @GIT_SUBMODULE_STATUS_INDEX_MODIFIED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @cl_assert(i32 %85)
  %87 = call i32 @rm_submodule_from_index(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @g_repo, align 4
  %89 = call i32 @get_submodule_status(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 %89, i32* %1, align 4
  %90 = load i32, i32* %1, align 4
  %91 = load i32, i32* @GIT_SUBMODULE_STATUS_INDEX_DELETED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @cl_assert(i32 %94)
  ret void
}

declare dso_local i32 @rm_submodule(i8*) #1

declare dso_local i32 @refute_submodule_exists(i32, i8*, i32) #1

declare dso_local i32 @get_submodule_status(i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir_relative(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @add_submodule_to_index(i8*) #1

declare dso_local i32 @rm_submodule_from_index(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
