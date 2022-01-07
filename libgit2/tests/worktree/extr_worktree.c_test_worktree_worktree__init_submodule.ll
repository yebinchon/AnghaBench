; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@fixture = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"../worktree/\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"repo-worktree\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"worktrees/repo-worktree/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__init_submodule() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i32 @cleanup_fixture_worktree(i32* @fixture)
  %8 = call %struct.TYPE_12__* (...) @setup_fixture_submod2()
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %1, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @git_buf_joinpath(%struct.TYPE_13__* %5, i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @git_repository_open(%struct.TYPE_12__** %2, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @git_buf_joinpath(%struct.TYPE_13__* %5, i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @git_worktree_add(i32** %4, %struct.TYPE_12__* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @git_repository_open_from_worktree(%struct.TYPE_12__** %3, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @git_path_prettify_dir(%struct.TYPE_13__* %5, i32 %32, i32* null)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_s(i32 %36, i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @git_path_prettify_dir(%struct.TYPE_13__* %5, i32 %43, i32* null)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_s(i32 %48, i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @git_buf_joinpath(%struct.TYPE_13__* %5, i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_s(i32 %59, i32 %62)
  %64 = call i32 @git_buf_dispose(%struct.TYPE_13__* %5)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @git_worktree_free(i32* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = call i32 @git_repository_free(%struct.TYPE_12__* %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = call i32 @git_repository_free(%struct.TYPE_12__* %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cleanup_fixture_worktree(i32*) #2

declare dso_local %struct.TYPE_12__* @setup_fixture_submod2(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_13__*, i32, i8*) #2

declare dso_local i32 @git_repository_open(%struct.TYPE_12__**, i32) #2

declare dso_local i32 @git_worktree_add(i32**, %struct.TYPE_12__*, i8*, i32, i32*) #2

declare dso_local i32 @git_repository_open_from_worktree(%struct.TYPE_12__**, i32*) #2

declare dso_local i32 @git_path_prettify_dir(%struct.TYPE_13__*, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

declare dso_local i32 @git_worktree_free(i32*) #2

declare dso_local i32 @git_repository_free(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
