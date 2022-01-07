; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__issue_1766_negated_ignores.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__issue_1766_negated_ignores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8**, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"empty_standard_repo/a\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"empty_standard_repo/a/.gitignore\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"*\0A!.gitignore\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/a/ignoreme\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"I should be ignored\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"a/.gitignore\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"a/ignoreme\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"empty_standard_repo/b\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"empty_standard_repo/b/.gitignore\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/b/ignoreme\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"b/.gitignore\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"b/ignoreme\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@test_ignore_status__issue_1766_negated_ignores.paths = internal global [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)], align 16
@test_ignore_status__issue_1766_negated_ignores.statuses = internal constant [4 x i32] [i32 128, i32 129, i32 128, i32 129], align 16
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__issue_1766_negated_ignores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @g_repo, align 4
  %5 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 509)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %9 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %10 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %11 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 509)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %15 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %16 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* @g_repo, align 4
  %20 = call i32 @git_status_file(i32* %1, i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @cl_assert_equal_i(i32 128, i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_status_file(i32* %1, i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @cl_assert_equal_i(i32 129, i32 %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = call i32 @git_status_file(i32* %1, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @cl_assert_equal_i(i32 128, i32 %32)
  %34 = load i32, i32* @g_repo, align 4
  %35 = call i32 @git_status_file(i32* %1, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @cl_assert_equal_i(i32 129, i32 %37)
  %39 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %40 = call i32 @memset(%struct.TYPE_7__* %3, i32 0, i32 40)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 4, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @test_ignore_status__issue_1766_negated_ignores.paths, i64 0, i64 0), i8*** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_ignore_status__issue_1766_negated_ignores.statuses, i64 0, i64 0), i32** %43, align 8
  %44 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @g_repo, align 4
  %47 = load i32, i32* @cb_status__normal, align 4
  %48 = call i32 @git_status_foreach_ext(i32 %46, %struct.TYPE_8__* %2, i32 %47, %struct.TYPE_7__* %3)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cl_assert_equal_i(i32 %51, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_i(i32 0, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cl_assert_equal_i(i32 0, i32 %59)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @refute_is_ignored(i8*) #1

declare dso_local i32 @assert_is_ignored(i8*) #1

declare dso_local i32 @git_status_file(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @git_status_foreach_ext(i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
