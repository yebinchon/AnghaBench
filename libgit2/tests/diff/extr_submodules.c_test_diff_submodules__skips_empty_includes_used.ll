; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__skips_empty_includes_used.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__skips_empty_includes_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"empty_standard_repo/subrepo\00", align 1
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"empty_standard_repo/subrepo/README.txt\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_submodules__skips_empty_includes_used() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %2, align 8
  %6 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* @g_repo, align 4
  %7 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %8 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %9
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %13, i32* null, %struct.TYPE_7__* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 16)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @diff_file_cb, align 4
  %19 = load i32, i32* @diff_binary_cb, align 4
  %20 = load i32, i32* @diff_hunk_cb, align 4
  %21 = load i32, i32* @diff_line_cb, align 4
  %22 = call i32 @git_diff_foreach(i32* %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.TYPE_8__* %3)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cl_assert_equal_i(i32 0, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_diff_free(i32* %27)
  %29 = call i32 @git_repository_init(i32** %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @git_repository_free(i32* %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %33, i32* null, %struct.TYPE_7__* %1)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 16)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @diff_file_cb, align 4
  %39 = load i32, i32* @diff_binary_cb, align 4
  %40 = load i32, i32* @diff_hunk_cb, align 4
  %41 = load i32, i32* @diff_line_cb, align 4
  %42 = call i32 @git_diff_foreach(i32* %37, i32 %38, i32 %39, i32 %40, i32 %41, %struct.TYPE_8__* %3)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cl_assert_equal_i(i32 1, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_i(i32 1, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @git_diff_free(i32* %53)
  %55 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @g_repo, align 4
  %57 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %56, i32* null, %struct.TYPE_7__* %1)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 16)
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* @diff_file_cb, align 4
  %62 = load i32, i32* @diff_binary_cb, align 4
  %63 = load i32, i32* @diff_hunk_cb, align 4
  %64 = load i32, i32* @diff_line_cb, align 4
  %65 = call i32 @git_diff_foreach(i32* %60, i32 %61, i32 %62, i32 %63, i32 %64, %struct.TYPE_8__* %3)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @cl_assert_equal_i(i32 1, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_i(i32 1, i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @git_diff_free(i32* %76)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
