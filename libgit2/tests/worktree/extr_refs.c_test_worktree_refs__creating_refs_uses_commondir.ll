; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_refs.c_test_worktree_refs__creating_refs_uses_commondir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_refs.c_test_worktree_refs__creating_refs_uses_commondir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@fixture = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"refs/heads/testbranch\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"testbranch\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_refs__creating_refs_uses_commondir() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fixture, i32 0, i32 0), align 4
  %8 = call i32 @git_repository_commondir(i32 %7)
  %9 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %5, i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @git_path_exists(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fixture, i32 0, i32 0), align 4
  %19 = call i32 @git_repository_head(i32** %1, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fixture, i32 0, i32 0), align 4
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_reference_target(i32* %22)
  %24 = call i32 @git_commit_lookup(i32** %4, i32 %21, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fixture, i32 0, i32 0), align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @git_branch_create(i32** %2, i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %27, i32 0)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fixture, i32 0, i32 0), align 4
  %31 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %32 = call i32 @git_branch_lookup(i32** %3, i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @git_reference_cmp(i32* %34, i32* %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @git_path_exists(i32 %41)
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_reference_free(i32* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @git_reference_free(i32* %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_reference_free(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @git_commit_free(i32* %50)
  %52 = call i32 @git_buf_dispose(%struct.TYPE_6__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_6__*, i32, i8*) #2

declare dso_local i32 @git_repository_commondir(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32) #2

declare dso_local i32 @git_reference_target(i32*) #2

declare dso_local i32 @git_branch_create(i32**, i32, i8*, i32*, i32) #2

declare dso_local i32 @git_branch_lookup(i32**, i32, i8*, i32) #2

declare dso_local i64 @git_reference_cmp(i32*, i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
