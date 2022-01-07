; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_expect_files_renamed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_expect_files_renamed.c"
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
@.str.1 = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"renames/ikeepsix2.txt\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @expect_files_renamed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_files_renamed(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %12 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @GIT_DIFF_FIND_FOR_UNTRACKED, align 4
  %17 = load i32, i32* @GIT_DIFF_FIND_AND_BREAK_REWRITES, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GIT_DIFF_FIND_RENAMES_FROM_REWRITES, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_repository_index(i32** %7, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @git_index_add_bypath(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @cl_git_rmfile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @g_repo, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @git_diff_index_to_workdir(i32** %8, i32 %35, i32* %36, %struct.TYPE_10__* %10)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @git_diff_find_similar(i32* %39, %struct.TYPE_11__* %11)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = call i32 @memset(%struct.TYPE_12__* %9, i32 0, i32 16)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @diff_file_cb, align 4
  %45 = load i32, i32* @diff_binary_cb, align 4
  %46 = load i32, i32* @diff_hunk_cb, align 4
  %47 = load i32, i32* @diff_line_cb, align 4
  %48 = call i32 @git_diff_foreach(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, %struct.TYPE_12__* %9)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @cl_assert_equal_i(i32 1, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_i(i32 1, i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @git_diff_free(i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @git_index_free(i32* %61)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @cl_git_rmfile(i8*) #2

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
