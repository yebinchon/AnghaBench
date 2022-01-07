; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_issue_1397.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_issue_1397.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"issue_1397\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"issue_1397/crlf_file.txt\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"first line\0D\0Asecond line modified\0D\0Aboth with crlf\00", align 1
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_index_issue_1397() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %2, align 8
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @cl_repo_set_bool(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 3, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %10, i32* null, %struct.TYPE_7__* %1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 40)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @diff_file_cb, align 4
  %16 = load i32, i32* @diff_binary_cb, align 4
  %17 = load i32, i32* @diff_hunk_cb, align 4
  %18 = load i32, i32* @diff_line_cb, align 4
  %19 = call i32 @git_diff_foreach(i32* %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.TYPE_8__* %3)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cl_assert_equal_i(i32 0, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cl_assert_equal_i(i32 0, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 0, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_diff_free(i32* %30)
  store i32* null, i32** %2, align 8
  %32 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @g_repo, align 4
  %34 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %33, i32* null, %struct.TYPE_7__* %1)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 40)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @diff_file_cb, align 4
  %39 = load i32, i32* @diff_binary_cb, align 4
  %40 = load i32, i32* @diff_hunk_cb, align 4
  %41 = load i32, i32* @diff_line_cb, align 4
  %42 = call i32 @git_diff_foreach(i32* %37, i32 %38, i32 %39, i32 %40, i32 %41, %struct.TYPE_8__* %3)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cl_assert_equal_i(i32 1, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_i(i32 1, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cl_assert_equal_i(i32 1, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_i(i32 5, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cl_assert_equal_i(i32 3, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cl_assert_equal_i(i32 1, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cl_assert_equal_i(i32 1, i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @git_diff_free(i32* %68)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
