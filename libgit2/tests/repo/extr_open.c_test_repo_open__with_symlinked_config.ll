; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__with_symlinked_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__with_symlinked_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"home/.gitconfig.linked\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"[global]\0Atest = 4567\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c".gitconfig.linked\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"home/.gitconfig\00", align 1
@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"global.test\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__with_symlinked_config() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @symlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 @cl_must_pass(i32 %10)
  %12 = call i32 @git_path_prettify(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %15 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @git_libgit2_opts(i32 %14, i32 %15, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_repository_open(i32** %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_config_open_default(i32** %3)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_config_get_int32(i32* %4, i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cl_assert_equal_i(i32 4567, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_config_free(i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @git_repository_free(i32* %31)
  %33 = call i32 @git_buf_cstr(%struct.TYPE_6__* %1)
  %34 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %35 = call i32 @git_futils_rmdir_r(i32 %33, i32* null, i32 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 (...) @cl_sandbox_set_search_path_defaults()
  %38 = call i32 @git_buf_dispose(%struct.TYPE_6__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @symlink(i8*, i8*) #2

declare dso_local i32 @git_path_prettify(%struct.TYPE_6__*, i8*, i32*) #2

declare dso_local i32 @git_libgit2_opts(i32, i32, i32) #2

declare dso_local i32 @git_repository_open(i32**, i8*) #2

declare dso_local i32 @git_config_open_default(i32**) #2

declare dso_local i32 @git_config_get_int32(i32*, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_futils_rmdir_r(i32, i32*, i32) #2

declare dso_local i32 @git_buf_cstr(%struct.TYPE_6__*) #2

declare dso_local i32 @cl_sandbox_set_search_path_defaults(...) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
