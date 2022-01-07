; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__update_index_with_symlink_doesnt_change_mode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__update_index_with_symlink_doesnt_change_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8**, i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@__const.test_status_worktree__update_index_with_symlink_doesnt_change_mode.expected_paths = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)], align 8
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@GIT_STATUS_SHOW_INDEX_AND_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_UPDATE_INDEX = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"testrepo/README\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"This was rewritten.\00", align 1
@cb_status__normal = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"link_to_new.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__update_index_with_symlink_doesnt_change_mode() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca [1 x i8*], align 8
  %9 = alloca [1 x i32], align 4
  %10 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %1, align 8
  %11 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = bitcast [1 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast ([1 x i8*]* @__const.test_status_worktree__update_index_with_symlink_doesnt_change_mode.expected_paths to i8*), i64 8, i1 false)
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %15 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @GIT_STATUS_SHOW_INDEX_AND_WORKDIR, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %19 = load i32, i32* @GIT_STATUS_OPT_UPDATE_INDEX, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_repository_head(i32** %2, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %27 = call i32 @git_reference_peel(i32** %3, i32* %25, i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @GIT_RESET_HARD, align 4
  %32 = call i32 @git_reset(i32* %29, i32* %30, i32 %31, i32* null)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i8** %36, i8*** %37, align 8
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32* %38, i32** %39, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @cb_status__normal, align 4
  %42 = call i32 @git_status_foreach_ext(i32* %40, %struct.TYPE_11__* %6, i32 %41, %struct.TYPE_10__* %7)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cl_assert_equal_i(i32 1, i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_repository_index(i32** %4, i32* %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @git_index_read(i32* %50, i32 1)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call %struct.TYPE_12__* @git_index_get_bypath(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %5, align 8
  %55 = call i32 @cl_assert(%struct.TYPE_12__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_12__* @S_ISLNK(i32 %58)
  %60 = call i32 @cl_assert(%struct.TYPE_12__* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @git_index_free(i32* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @git_object_free(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @git_reference_free(i32* %65)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head(i32**, i32*) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_reset(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_status_foreach_ext(i32*, %struct.TYPE_11__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_read(i32*, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @S_ISLNK(i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
