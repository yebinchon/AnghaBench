; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__can_override_thresholds_when_obeying_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__can_override_thresholds_when_obeying_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@COPY_RENAME_COMMIT = common dso_local global i8* null, align 8
@REWRITE_COPY_COMMIT = common dso_local global i8* null, align 8
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_BY_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"diff.renames\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"copies\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_COPIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__can_override_thresholds_when_obeying_config() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = load i8*, i8** @COPY_RENAME_COMMIT, align 8
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** @REWRITE_COPY_COMMIT, align 8
  store i8* %11, i8** %2, align 8
  %12 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 8, i1 false)
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i8*, i8** %1, align 8
  %16 = call i32* @resolve_commit_oid_to_tree(i32 %14, i8* %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32, i32* @g_repo, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32* @resolve_commit_oid_to_tree(i32 %17, i8* %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @GIT_DIFF_FIND_BY_CONFIG, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @g_repo, align 4
  %27 = call i32 @git_repository_config(i32** %5, i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @git_config_set_string(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @git_config_free(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 96, i32* %34, align 4
  %35 = load i32, i32* @g_repo, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_diff_tree_to_tree(i32** %6, i32 %35, i32* %36, i32* %37, %struct.TYPE_10__* %7)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @memset(%struct.TYPE_12__* %9, i32 0, i32 16)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @git_diff_find_similar(i32* %41, %struct.TYPE_11__* %8)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @diff_file_cb, align 4
  %46 = load i32, i32* @diff_binary_cb, align 4
  %47 = load i32, i32* @diff_hunk_cb, align 4
  %48 = load i32, i32* @diff_line_cb, align 4
  %49 = call i32 @git_diff_foreach(i32* %44, i32 %45, i32 %46, i32 %47, i32 %48, %struct.TYPE_12__* %9)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @cl_assert_equal_i(i32 4, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cl_assert_equal_i(i32 1, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_i(i32 2, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cl_assert_equal_i(i32 1, i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @git_diff_free(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 20, i32* %74, align 4
  %75 = load i32, i32* @g_repo, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @git_diff_tree_to_tree(i32** %6, i32 %75, i32* %76, i32* %77, %struct.TYPE_10__* %7)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = call i32 @memset(%struct.TYPE_12__* %9, i32 0, i32 16)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @git_diff_find_similar(i32* %81, %struct.TYPE_11__* %8)
  %83 = call i32 @cl_git_pass(i32 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @diff_file_cb, align 4
  %86 = load i32, i32* @diff_binary_cb, align 4
  %87 = load i32, i32* @diff_hunk_cb, align 4
  %88 = load i32, i32* @diff_line_cb, align 4
  %89 = call i32 @git_diff_foreach(i32* %84, i32 %85, i32 %86, i32 %87, i32 %88, %struct.TYPE_12__* %9)
  %90 = call i32 @cl_git_pass(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @cl_assert_equal_i(i32 4, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cl_assert_equal_i(i32 1, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cl_assert_equal_i(i32 2, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @GIT_DELTA_COPIED, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cl_assert_equal_i(i32 1, i32 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @git_diff_free(i32* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @git_tree_free(i32* %114)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @git_tree_free(i32* %116)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
