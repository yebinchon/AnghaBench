; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__add_with_explicit_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__add_with_explicit_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@GIT_WORKTREE_ADD_OPTIONS_INIT = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@fixture = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"worktree-with-ref\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"../worktree-with-different-name\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"worktree-with-different-name\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"refs/heads/worktree-with-ref\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__add_with_explicit_branch() #0 {
  %1 = alloca %struct.TYPE_26__*, align 8
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_27__, align 4
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = bitcast %struct.TYPE_27__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_27__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.TYPE_24__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_24__* @GIT_WORKTREE_ADD_OPTIONS_INIT to i8*), i64 8, i1 false)
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @fixture, i32 0, i32 0), align 8
  %12 = call i32 @git_repository_head(%struct.TYPE_26__** %1, %struct.TYPE_25__* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @fixture, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = call i32 @git_commit_lookup(i32** %4, %struct.TYPE_25__* %14, i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @fixture, i32 0, i32 0), align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @git_branch_create(%struct.TYPE_26__** %2, %struct.TYPE_25__* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %21, i32 0)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %25, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @fixture, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @git_buf_joinpath(%struct.TYPE_27__* %7, i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @fixture, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @git_worktree_add(i32** %5, %struct.TYPE_25__* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %33, %struct.TYPE_24__* %8)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @git_repository_open_from_worktree(%struct.TYPE_25__** %6, i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = call i32 @git_repository_head(%struct.TYPE_26__** %3, %struct.TYPE_25__* %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %43 = call i32 @git_reference_name(%struct.TYPE_26__* %42)
  %44 = call i32 @cl_assert_equal_s(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @git_buf_dispose(%struct.TYPE_27__* %7)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_commit_free(i32* %46)
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %1, align 8
  %49 = call i32 @git_reference_free(%struct.TYPE_26__* %48)
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %51 = call i32 @git_reference_free(%struct.TYPE_26__* %50)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %53 = call i32 @git_reference_free(%struct.TYPE_26__* %52)
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %55 = call i32 @git_repository_free(%struct.TYPE_25__* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @git_worktree_free(i32* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_head(%struct.TYPE_26__**, %struct.TYPE_25__*) #2

declare dso_local i32 @git_commit_lookup(i32**, %struct.TYPE_25__*, i32*) #2

declare dso_local i32 @git_branch_create(%struct.TYPE_26__**, %struct.TYPE_25__*, i8*, i32*, i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_27__*, i32, i8*) #2

declare dso_local i32 @git_worktree_add(i32**, %struct.TYPE_25__*, i8*, i32, %struct.TYPE_24__*) #2

declare dso_local i32 @git_repository_open_from_worktree(%struct.TYPE_25__**, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_reference_name(%struct.TYPE_26__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_27__*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(%struct.TYPE_26__*) #2

declare dso_local i32 @git_repository_free(%struct.TYPE_25__*) #2

declare dso_local i32 @git_worktree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
