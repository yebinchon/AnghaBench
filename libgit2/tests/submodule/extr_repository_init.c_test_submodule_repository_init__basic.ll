; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_repository_init.c_test_submodule_repository_init__basic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_repository_init.c_test_submodule_repository_init__basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sm_gitmodules_only\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"../../../sm_gitmodules_only/\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"submod2/sm_gitmodules_only/.git\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"gitdir: ../.git/modules/sm_gitmodules_only/\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"submod2/.git/modules\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"submod2/.git/modules/sm_gitmodules_only\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"submod2/.git/modules/sm_gitmodules_only/HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_repository_init__basic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = call i32 (...) @setup_fixture_submod2()
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_submodule_lookup(i32** %1, i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_submodule_init(i32* %9, i32 0)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_submodule_repo_init(i32** %2, i32* %12, i32 1)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @assert_config_entry_value(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = call i32 @git_path_isfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @cl_assert(i32 %22)
  %24 = call i32 @git_path_isdir(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_path_isdir(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 @cl_assert(i32 %26)
  %28 = call i32 @git_path_isfile(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_submodule_free(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_repository_free(i32* %32)
  %34 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_submodule_init(i32*, i32) #2

declare dso_local i32 @git_submodule_repo_init(i32**, i32*, i32) #2

declare dso_local i32 @assert_config_entry_value(i32*, i8*, i8*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @git_submodule_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
