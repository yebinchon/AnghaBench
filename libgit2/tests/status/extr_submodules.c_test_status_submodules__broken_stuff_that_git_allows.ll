; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__broken_stuff_that_git_allows.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__broken_stuff_that_git_allows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@test_status_submodules__broken_stuff_that_git_allows.expected_files_with_broken = internal global [7 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"broken/tracked\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"untracked\00", align 1
@test_status_submodules__broken_stuff_that_git_allows.expected_status_with_broken = internal global [7 x i32] [i32 129, i32 130, i32 130, i32 131, i32 132, i32 129, i32 128], align 16
@g_repo = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"submodules/broken\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"submodules/broken/tracked\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"tracked content\00", align 1
@cb_status__match = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"submodules/broken/.git\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"submodules/broken/.git/info\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"submodules/broken/.git/info/exclude\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"# bogus\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"submodules/.gitmodules\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"\0A[submodule \22broken\22]\0A\09path = broken\0A\09url = https://github.com/not/used\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_submodules__broken_stuff_that_git_allows() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = call i32 (...) @setup_fixture_submodules()
  store i32 %6, i32* @g_repo, align 4
  %7 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %8 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_IGNORED, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = call i32 @p_mkdir(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 511)
  %14 = call i32 @cl_must_pass(i32 %13)
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_repository_index(i32** %4, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_index_add_bypath(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_index_write(i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_index_free(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @status_counts_init(i32 %28, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @test_status_submodules__broken_stuff_that_git_allows.expected_files_with_broken, i64 0, i64 0), i32* getelementptr inbounds ([7 x i32], [7 x i32]* @test_status_submodules__broken_stuff_that_git_allows.expected_status_with_broken, i64 0, i64 0))
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32, i32* @cb_status__match, align 4
  %32 = call i32 @git_status_foreach_ext(i32 %30, %struct.TYPE_8__* %1, i32 %31, %struct.TYPE_7__* %2)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_i(i32 7, i32 %35)
  %37 = call i32 @p_mkdir(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 511)
  %38 = call i32 @cl_must_pass(i32 %37)
  %39 = call i32 @p_mkdir(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 511)
  %40 = call i32 @cl_must_pass(i32 %39)
  %41 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @status_counts_init(i32 %43, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @test_status_submodules__broken_stuff_that_git_allows.expected_files_with_broken, i64 0, i64 0), i32* getelementptr inbounds ([7 x i32], [7 x i32]* @test_status_submodules__broken_stuff_that_git_allows.expected_status_with_broken, i64 0, i64 0))
  %45 = load i32, i32* @g_repo, align 4
  %46 = load i32, i32* @cb_status__match, align 4
  %47 = call i32 @git_status_foreach_ext(i32 %45, %struct.TYPE_8__* %1, i32 %46, %struct.TYPE_7__* %2)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 7, i32 %50)
  %52 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %53 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = call i32 @git_repository_init(i32** %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_repository_free(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @status_counts_init(i32 %60, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @test_status_submodules__broken_stuff_that_git_allows.expected_files_with_broken, i64 0, i64 0), i32* getelementptr inbounds ([7 x i32], [7 x i32]* @test_status_submodules__broken_stuff_that_git_allows.expected_status_with_broken, i64 0, i64 0))
  %62 = load i32, i32* @g_repo, align 4
  %63 = load i32, i32* @cb_status__match, align 4
  %64 = call i32 @git_status_foreach_ext(i32 %62, %struct.TYPE_8__* %1, i32 %63, %struct.TYPE_7__* %2)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cl_assert_equal_i(i32 7, i32 %67)
  %69 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %70 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 %69)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @status_counts_init(i32 %74, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @test_status_submodules__broken_stuff_that_git_allows.expected_files_with_broken, i64 0, i64 0), i32* getelementptr inbounds ([7 x i32], [7 x i32]* @test_status_submodules__broken_stuff_that_git_allows.expected_status_with_broken, i64 0, i64 0))
  %76 = load i32, i32* @g_repo, align 4
  %77 = load i32, i32* @cb_status__match, align 4
  %78 = call i32 @git_status_foreach_ext(i32 %76, %struct.TYPE_8__* %1, i32 %77, %struct.TYPE_7__* %2)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cl_assert_equal_i(i32 7, i32 %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submodules(...) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @status_counts_init(i32, i8**, i32*) #2

declare dso_local i32 @git_status_foreach_ext(i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
