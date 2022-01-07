; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@fixture = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"../worktree-new\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"worktree-new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"worktree-new/\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fixture, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @git_buf_joinpath(%struct.TYPE_7__* %4, i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fixture, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @git_worktree_add(i32** %1, %struct.TYPE_8__* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32* null)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @git_repository_open(i32** %2, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_repository_workdir(i32* %20)
  %22 = call i64 @git__suffixcmp(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %28 = call i32 @git_branch_lookup(i32** %3, i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @git_buf_dispose(%struct.TYPE_7__* %4)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_worktree_free(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_reference_free(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_repository_free(i32* %35)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @git_worktree_add(i32**, %struct.TYPE_8__*, i8*, i32, i32*) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git__suffixcmp(i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @git_branch_lookup(i32**, i32*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

declare dso_local i32 @git_worktree_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
