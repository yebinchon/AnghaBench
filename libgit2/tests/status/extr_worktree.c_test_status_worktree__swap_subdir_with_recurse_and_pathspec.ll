; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__swap_subdir_with_recurse_and_pathspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__swap_subdir_with_recurse_and_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"status/current_file\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"status/swap\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"status/subdir\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"status/.new_file\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"status/zzz_new_dir\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"status/zzz_new_dir/new_file\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"status/zzz_new_file\00", align 1
@entry_count4 = common dso_local global i32 0, align 4
@entry_paths4 = common dso_local global i32 0, align 4
@entry_statuses4 = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__swap_subdir_with_recurse_and_pathspec() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = call i32 @p_rename(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @p_rename(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @p_rename(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 511)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %17 = call i32 @memset(%struct.TYPE_7__* %1, i32 0, i32 24)
  %18 = load i32, i32* @entry_count4, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @entry_paths4, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @entry_statuses4, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %25 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @cb_status__normal, align 4
  %30 = call i32 @git_status_foreach_ext(i32* %28, %struct.TYPE_8__* %3, i32 %29, %struct.TYPE_7__* %1)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_i(i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i32 0, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cl_assert_equal_i(i32 0, i32 %41)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_rename(i8*, i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @git_status_foreach_ext(i32*, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
