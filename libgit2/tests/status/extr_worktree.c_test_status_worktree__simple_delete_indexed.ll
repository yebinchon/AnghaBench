; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__simple_delete_indexed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__simple_delete_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_EXCLUDE_SUBMODULES = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"renames/untimely.txt\00", align 1
@GIT_STATUS_WT_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__simple_delete_indexed() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32*, align 8
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %7 = load i32, i32* @GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @GIT_STATUS_OPT_EXCLUDE_SUBMODULES, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %12 = or i32 %10, %11
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_status_list_new(i32** %3, i32* %14, %struct.TYPE_5__* %2)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @git_status_list_entrycount(i32* %17)
  %19 = call i32 @cl_assert_equal_sz(i32 0, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_status_list_free(i32* %20)
  %22 = call i32 @p_unlink(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @cl_must_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_status_list_new(i32** %3, i32* %24, %struct.TYPE_5__* %2)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_status_list_entrycount(i32* %27)
  %29 = call i32 @cl_assert_equal_sz(i32 1, i32 %28)
  %30 = load i32, i32* @GIT_STATUS_WT_DELETED, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call %struct.TYPE_6__* @git_status_byindex(i32* %31, i32 0)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cl_assert_equal_i(i32 %30, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @git_status_list_free(i32* %36)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_list_new(i32**, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_status_list_entrycount(i32*) #1

declare dso_local i32 @git_status_list_free(i32*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_unlink(i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local %struct.TYPE_6__* @git_status_byindex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
