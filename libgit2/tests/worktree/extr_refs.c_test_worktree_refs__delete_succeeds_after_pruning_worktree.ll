; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_refs.c_test_worktree_refs__delete_succeeds_after_pruning_worktree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_refs.c_test_worktree_refs__delete_succeeds_after_pruning_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GIT_WORKTREE_PRUNE_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_WORKTREE_PRUNE_VALID = common dso_local global i32 0, align 4
@fixture = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"testrepo-worktree\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_refs__delete_succeeds_after_pruning_worktree() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_WORKTREE_PRUNE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @GIT_WORKTREE_PRUNE_VALID, align 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fixture, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fixture, i32 0, i32 1), align 4
  %9 = call i32 @git_worktree_lookup(i32** %3, i32 %7, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @git_worktree_prune(i32* %11, %struct.TYPE_5__* %1)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @git_worktree_free(i32* %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fixture, i32 0, i32 0), align 4
  %17 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %18 = call i32 @git_branch_lookup(i32** %2, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_branch_delete(i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_reference_free(i32* %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_worktree_lookup(i32**, i32, i32) #2

declare dso_local i32 @git_worktree_prune(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_worktree_free(i32*) #2

declare dso_local i32 @git_branch_lookup(i32**, i32, i8*, i32) #2

declare dso_local i32 @git_branch_delete(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
