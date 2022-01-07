; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__unreadable_as_untracked.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__unreadable_as_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i8**, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"no_permission/foo\00", align 1
@__const.test_status_worktree__unreadable_as_untracked.expected_paths = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)], align 8
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"empty_standard_repo/no_permission\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"empty_standard_repo/no_permission/foo\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@GIT_STATUS_SHOW_WORKDIR_ONLY = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNREADABLE = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__unreadable_as_untracked() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = alloca [1 x i32], align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast ([1 x i8*]* @__const.test_status_worktree__unreadable_as_untracked.expected_paths to i8*), i64 8, i1 false)
  %7 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %8 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @p_chmod(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 420)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i8** %17, i8*** %18, align 8
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* @GIT_STATUS_SHOW_WORKDIR_ONLY, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %24 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNREADABLE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @cb_status__normal, align 4
  %31 = call i32 @git_status_foreach_ext(i32* %29, %struct.TYPE_7__* %4, i32 %30, %struct.TYPE_6__* %5)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = call i32 @p_chmod(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @cl_assert_equal_i(i32 %35, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_i(i32 0, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @cl_assert_equal_i(i32 0, i32 %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @p_chmod(i8*, i32) #2

declare dso_local i32 @git_status_foreach_ext(i32*, %struct.TYPE_7__*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
