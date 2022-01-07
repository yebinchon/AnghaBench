; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__add_locked.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__add_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_WORKTREE_ADD_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@fixture = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"../worktree-locked\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"worktree-locked\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"worktree-locked/\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__add_locked() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_WORKTREE_ADD_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @git_buf_joinpath(%struct.TYPE_11__* %4, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @git_worktree_add(i32** %1, %struct.TYPE_12__* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %16, %struct.TYPE_10__* %5)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_worktree_is_locked(i32* null, i32* %19)
  %21 = call i32 @cl_assert(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @git_repository_open(i32** %2, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @git_repository_workdir(i32* %26)
  %28 = call i64 @git__suffixcmp(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %34 = call i32 @git_branch_lookup(i32** %3, i32* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = call i32 @git_buf_dispose(%struct.TYPE_11__* %4)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_worktree_free(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @git_reference_free(i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @git_repository_free(i32* %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @git_worktree_add(i32**, %struct.TYPE_12__*, i8*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_worktree_is_locked(i32*, i32*) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i64 @git__suffixcmp(i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @git_branch_lookup(i32**, i32*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

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
