; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__no_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__no_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"empty_standard_repo/.gitted\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"empty_standard_repo/.git\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"empty_standard_repo/.git/config\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_XDG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"test.set\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"42\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__no_config() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = call i32 @cl_fixture_sandbox(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_rename(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %9 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @p_mkdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %12 = call i32 @cl_must_pass(i32 %11)
  %13 = call i32 @git_path_prettify(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %16 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @git_libgit2_opts(i32 %15, i32 %16, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %22 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @git_libgit2_opts(i32 %21, i32 %22, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %28 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @git_libgit2_opts(i32 %27, i32 %28, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  %34 = call i32 @git_repository_open(i32** %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_repository_config(i32** %3, i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @git_config_set_string(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @git_config_free(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_repository_free(i32* %44)
  %46 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 (...) @cl_sandbox_set_search_path_defaults()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_fixture_sandbox(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @cl_rename(i8*, i8*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_path_prettify(%struct.TYPE_5__*, i8*, i32*) #2

declare dso_local i32 @git_libgit2_opts(i32, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_repository_open(i32**, i8*) #2

declare dso_local i32 @git_repository_config(i32**, i32*) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

declare dso_local i32 @cl_sandbox_set_search_path_defaults(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
