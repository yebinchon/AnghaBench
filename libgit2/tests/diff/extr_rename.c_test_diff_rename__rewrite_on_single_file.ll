; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__rewrite_on_single_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__rewrite_on_single_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_FOR_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_AND_BREAK_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES_FROM_REWRITES = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"renames/ikeepsix.txt\00", align 1
@.str.1 = private unnamed_addr constant [849 x i8] c"This is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0AThis is enough content for the file to be rewritten.\0A\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__rewrite_on_single_file() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  store i32* null, i32** %2, align 8
  %6 = bitcast %struct.TYPE_10__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %7 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @GIT_DIFF_FIND_FOR_UNTRACKED, align 4
  %11 = load i32, i32* @GIT_DIFF_FIND_AND_BREAK_REWRITES, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GIT_DIFF_FIND_RENAMES_FROM_REWRITES, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_repository_index(i32** %1, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([849 x i8], [849 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @g_repo, align 4
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %20, i32* %21, %struct.TYPE_10__* %4)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_diff_find_similar(i32* %24, %struct.TYPE_11__* %5)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @memset(%struct.TYPE_12__* %3, i32 0, i32 16)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @diff_file_cb, align 4
  %30 = load i32, i32* @diff_binary_cb, align 4
  %31 = load i32, i32* @diff_hunk_cb, align 4
  %32 = load i32, i32* @diff_line_cb, align 4
  %33 = call i32 @git_diff_foreach(i32* %28, i32 %29, i32 %30, i32 %31, i32 %32, %struct.TYPE_12__* %3)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cl_assert_equal_i(i32 2, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_i(i32 1, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_i(i32 1, i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_diff_free(i32* %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_index_free(i32* %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
