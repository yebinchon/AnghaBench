; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__failures.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__failures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attr/sub\00", align 1
@GIT_REPOSITORY_OPEN_NO_SEARCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"attr/sub/sub\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"alternate/.git\00", align 1
@GIT_REPOSITORY_OPEN_NO_DOTGIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__failures() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %5 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_repository_workdir(i32* %6)
  %8 = call i32 @git_buf_sets(%struct.TYPE_6__* %3, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_repository_open(i32** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_fail(i32 %10)
  %12 = load i32, i32* @GIT_REPOSITORY_OPEN_NO_SEARCH, align 4
  %13 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32* null)
  %14 = call i32 @cl_git_fail(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %16)
  %18 = call i32 @cl_git_fail(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %3, i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %24)
  %26 = call i32 @cl_git_fail(i32 %25)
  %27 = call i32 @p_mkdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @p_mkdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 511)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null)
  %32 = call i32 @cl_git_fail(i32 %31)
  %33 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null)
  %34 = call i32 @cl_git_fail(i32 %33)
  %35 = load i32, i32* @GIT_REPOSITORY_OPEN_NO_SEARCH, align 4
  %36 = load i32, i32* @GIT_REPOSITORY_OPEN_NO_DOTGIT, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %37, i32* null)
  %39 = call i32 @cl_git_fail(i32 %38)
  %40 = call i32 @git_buf_dispose(%struct.TYPE_6__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_repository_open(i32**, i8*) #2

declare dso_local i32 @git_repository_open_ext(i32**, i8*, i32, i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_6__*, i32*, i8*) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
