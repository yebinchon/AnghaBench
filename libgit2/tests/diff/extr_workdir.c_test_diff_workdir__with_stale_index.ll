; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__with_stale_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__with_stale_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"new_file\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"subdir/new_file\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"staged_new_file\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"staged_changes_file_deleted\00", align 1
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__with_stale_index() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 12, i1 false)
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %8 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** @g_repo, align 8
  %9 = load i32*, i32** @g_repo, align 8
  %10 = call i32 @git_repository_index(i32** %3, i32* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_repository_open(i32** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @git_repository_index(i32** %6, i32* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @git_index_add_bypath(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @git_index_add_bypath(i32* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @git_index_remove_bypath(i32* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @git_index_remove_bypath(i32* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @git_index_write(i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @git_index_free(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @git_repository_free(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 3, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %39 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** @g_repo, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_diff_index_to_workdir(i32** %2, i32* %44, i32* %45, %struct.TYPE_7__* %1)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 16)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @diff_file_cb, align 4
  %51 = load i32, i32* @diff_binary_cb, align 4
  %52 = load i32, i32* @diff_hunk_cb, align 4
  %53 = load i32, i32* @diff_line_cb, align 4
  %54 = call i32 @git_diff_foreach(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53, %struct.TYPE_8__* %4)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cl_assert_equal_i(i32 17, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cl_assert_equal_i(i32 0, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cl_assert_equal_i(i32 4, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cl_assert_equal_i(i32 4, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cl_assert_equal_i(i32 4, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cl_assert_equal_i(i32 5, i32 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @git_diff_free(i32* %89)
  %91 = load i32*, i32** @g_repo, align 8
  %92 = call i32 @git_diff_index_to_workdir(i32** %2, i32* %91, i32* null, %struct.TYPE_7__* %1)
  %93 = call i32 @cl_git_pass(i32 %92)
  %94 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 16)
  %95 = load i32*, i32** %2, align 8
  %96 = load i32, i32* @diff_file_cb, align 4
  %97 = load i32, i32* @diff_binary_cb, align 4
  %98 = load i32, i32* @diff_hunk_cb, align 4
  %99 = load i32, i32* @diff_line_cb, align 4
  %100 = call i32 @git_diff_foreach(i32* %95, i32 %96, i32 %97, i32 %98, i32 %99, %struct.TYPE_8__* %4)
  %101 = call i32 @cl_git_pass(i32 %100)
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @git_diff_free(i32* %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cl_assert_equal_i(i32 16, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @cl_assert_equal_i(i32 0, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @cl_assert_equal_i(i32 3, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cl_assert_equal_i(i32 4, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @cl_assert_equal_i(i32 3, i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cl_assert_equal_i(i32 6, i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @git_index_free(i32* %137)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_repository_open(i32**, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
