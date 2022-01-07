; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__at_head_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__at_head_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"empty_standard_repo/file1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"empty_standard_repo/file2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pong\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pyng\00", align 1
@GIT_STATUS_SHOW_INDEX_AND_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__at_head_parent() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 16, i1 false)
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @stage_and_commit(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_repository_head_tree(i32** %4, i32* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @stage_and_commit(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %17 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @GIT_STATUS_SHOW_INDEX_AND_WORKDIR, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_status_list_new(i32** %3, i32* %22, %struct.TYPE_10__* %2)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_status_list_entrycount(i32* %25)
  %27 = call i32 @cl_assert_equal_sz(i32 1, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call %struct.TYPE_11__* @git_status_byindex(i32* %28, i32 0)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %42 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cl_assert_equal_i(i32 %43, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @git_tree_free(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_status_list_free(i32* %50)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @stage_and_commit(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head_tree(i32**, i32*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_status_list_new(i32**, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_status_list_entrycount(i32*) #1

declare dso_local %struct.TYPE_11__* @git_status_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_status_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
