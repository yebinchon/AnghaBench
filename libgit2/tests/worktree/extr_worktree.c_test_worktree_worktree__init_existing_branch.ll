; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init_existing_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init_existing_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@fixture = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"worktree-new\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"../worktree-new\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__init_existing_branch() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__, align 4
  %6 = bitcast %struct.TYPE_18__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_18__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fixture, i32 0, i32 0), align 8
  %8 = call i32 @git_repository_head(%struct.TYPE_17__** %1, %struct.TYPE_19__* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fixture, i32 0, i32 0), align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = call i32 @git_commit_lookup(i32** %3, %struct.TYPE_19__* %10, i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fixture, i32 0, i32 0), align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @git_branch_create(%struct.TYPE_17__** %2, %struct.TYPE_19__* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %17, i32 0)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fixture, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @git_buf_joinpath(%struct.TYPE_18__* %5, i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fixture, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_worktree_add(i32** %4, %struct.TYPE_19__* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27, i32* null)
  %29 = call i32 @cl_git_fail(i32 %28)
  %30 = call i32 @git_buf_dispose(%struct.TYPE_18__* %5)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_commit_free(i32* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %34 = call i32 @git_reference_free(%struct.TYPE_17__* %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %36 = call i32 @git_reference_free(%struct.TYPE_17__* %35)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_head(%struct.TYPE_17__**, %struct.TYPE_19__*) #2

declare dso_local i32 @git_commit_lookup(i32**, %struct.TYPE_19__*, i32*) #2

declare dso_local i32 @git_branch_create(%struct.TYPE_17__**, %struct.TYPE_19__*, i8*, i32*, i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_18__*, i32, i8*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_worktree_add(i32**, %struct.TYPE_19__*, i8*, i32, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_18__*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(%struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
