; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_tree_issue_1397.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_tree_issue_1397.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"7f483a738\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"issue_1397\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_tree_issue_1397() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %8, i32* @g_repo, align 4
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @cl_repo_set_bool(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i8*, i8** %1, align 8
  %13 = call i32* @resolve_commit_oid_to_tree(i32 %11, i8* %12)
  store i32* %13, i32** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 3, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_diff_tree_to_workdir(i32** %4, i32 %16, i32* %17, %struct.TYPE_9__* %3)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @memset(%struct.TYPE_10__* %6, i32 0, i32 12)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @diff_file_cb, align 4
  %23 = load i32, i32* @diff_binary_cb, align 4
  %24 = load i32, i32* @diff_hunk_cb, align 4
  %25 = load i32, i32* @diff_line_cb, align 4
  %26 = call i32 @git_diff_foreach(i32* %21, i32 %22, i32 %23, i32 %24, i32 %25, %struct.TYPE_10__* %6)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_assert_equal_i(i32 0, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cl_assert_equal_i(i32 0, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_i(i32 0, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_diff_free(i32* %37)
  store i32* null, i32** %4, align 8
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_diff_tree_to_index(i32** %4, i32 %39, i32* %40, i32* null, %struct.TYPE_9__* %3)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @g_repo, align 4
  %44 = call i32 @git_diff_index_to_workdir(i32** %5, i32 %43, i32* null, %struct.TYPE_9__* %3)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @git_diff_merge(i32* %46, i32* %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @git_diff_free(i32* %50)
  %52 = call i32 @memset(%struct.TYPE_10__* %6, i32 0, i32 12)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @diff_file_cb, align 4
  %55 = load i32, i32* @diff_binary_cb, align 4
  %56 = load i32, i32* @diff_hunk_cb, align 4
  %57 = load i32, i32* @diff_line_cb, align 4
  %58 = call i32 @git_diff_foreach(i32* %53, i32 %54, i32 %55, i32 %56, i32 %57, %struct.TYPE_10__* %6)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cl_assert_equal_i(i32 0, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_i(i32 0, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cl_assert_equal_i(i32 0, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @git_diff_free(i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @git_tree_free(i32* %71)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @git_diff_merge(i32*, i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
