; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_add.c_test_submodule_add__url_absolute.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_add.c_test_submodule_add__url_absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"whatever\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"https://github.com/libgit2/libgit2.git\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sm_libgit2\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"submod2/sm_libgit2/.git\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"submod2/.git/modules\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"submod2/.git/modules/sm_libgit2\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"submod2/.git/modules/sm_libgit2/HEAD\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"submod2/sm_libgit2\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"../../../sm_libgit2/\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"gitdir: ../.git/modules/sm_libgit2/\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"sm_libgit2b\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"submod2/sm_libgit2b/.git\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"submod2/sm_libgit2b/.git/HEAD\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"submod2/.git/modules/sm_libgit2b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_add__url_absolute() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = call i32 (...) @setup_fixture_submod2()
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @GIT_EEXISTS, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_submodule_add_setup(i32** null, i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %9 = call i32 @cl_git_fail_with(i32 %6, i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_submodule_add_setup(i32** %1, i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_submodule_free(i32* %13)
  %15 = call i32 @git_path_isfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @cl_assert(i32 %15)
  %17 = call i32 @git_path_isdir(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @cl_assert(i32 %17)
  %19 = call i32 @git_path_isdir(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %20 = call i32 @cl_assert(i32 %19)
  %21 = call i32 @git_path_isfile(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %22 = call i32 @cl_assert(i32 %21)
  %23 = call i32 @assert_submodule_url(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @git_repository_open(i32** %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @assert_config_entry_value(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %28 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_repository_free(i32* %33)
  %35 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  %36 = load i32, i32* @g_repo, align 4
  %37 = call i32 @git_submodule_add_setup(i32** %1, i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_submodule_free(i32* %39)
  %41 = call i32 @git_path_isdir(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %42 = call i32 @cl_assert(i32 %41)
  %43 = call i32 @git_path_isfile(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %44 = call i32 @cl_assert(i32 %43)
  %45 = call i32 @git_path_exists(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = call i32 @assert_submodule_url(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_submodule_add_setup(i32**, i32, i8*, i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_submodule_free(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @assert_submodule_url(i8*, i8*) #2

declare dso_local i32 @git_repository_open(i32**, i8*) #2

declare dso_local i32 @assert_config_entry_value(i32*, i8*, i8*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_path_exists(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
