; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__leading_slash_ignores.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__leading_slash_ignores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8**, i32*, i32, i32, i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@test_ignore_status__leading_slash_ignores.paths_2 = internal global [10 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [15 x i8] c"dir/.gitignore\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"dir/a/ignore_me\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"dir/b/ignore_me\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dir/ignore_me\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ignore_also/file\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ignore_me\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"test/.gitignore\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"test/ignore_me/and_me/file\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"test/ignore_me/file\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"test/ignore_me/file2\00", align 1
@test_ignore_status__leading_slash_ignores.statuses_2 = internal constant [10 x i32] [i32 128, i32 128, i32 128, i32 129, i32 129, i32 129, i32 128, i32 128, i32 128, i32 128], align 16
@test_repo_1 = common dso_local global i32 0, align 4
@test_files_1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"home/.gitignore\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"/ignore_me\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"core.excludesfile\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"~/.gitignore\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"empty_standard_repo/.git/info/exclude\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"/ignore_also\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"empty_standard_repo/dir/.gitignore\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"empty_standard_repo/test/.gitignore\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"/and_me\0A\00", align 1
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_IGNORED_DIRS = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__leading_slash_ignores() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @test_repo_1, align 4
  %6 = load i32, i32* @test_files_1, align 4
  %7 = call i32 @make_test_data(i32 %5, i32 %6)
  %8 = call i32 (...) @cl_fake_home()
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_repository_config(i32** %3, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @git_config_set_string(i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_config_free(i32* %16)
  %18 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %19 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %20 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %21 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 40)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 10, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @test_ignore_status__leading_slash_ignores.paths_2, i64 0, i64 0), i8*** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @test_ignore_status__leading_slash_ignores.statuses_2, i64 0, i64 0), i32** %24, align 8
  %25 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %26 = load i32, i32* @GIT_STATUS_OPT_RECURSE_IGNORED_DIRS, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32, i32* @cb_status__normal, align 4
  %31 = call i32 @git_status_foreach_ext(i32 %29, %struct.TYPE_8__* %1, i32 %30, %struct.TYPE_7__* %2)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cl_assert_equal_i(i32 %34, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_i(i32 0, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cl_assert_equal_i(i32 0, i32 %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @make_test_data(i32, i32) #2

declare dso_local i32 @cl_fake_home(...) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @git_status_foreach_ext(i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
