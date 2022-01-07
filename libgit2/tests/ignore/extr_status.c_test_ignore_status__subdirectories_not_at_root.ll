; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__subdirectories_not_at_root.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__subdirectories_not_at_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8**, i32*, i32, i32, i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@test_ignore_status__subdirectories_not_at_root.paths_1 = internal global [10 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0)], align 16
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
@test_ignore_status__subdirectories_not_at_root.statuses_1 = internal constant [10 x i32] [i32 128, i32 129, i32 129, i32 129, i32 128, i32 128, i32 128, i32 129, i32 128, i32 128], align 16
@test_repo_1 = common dso_local global i32 0, align 4
@test_files_1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"empty_standard_repo/dir/.gitignore\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"ignore_me\0A/ignore_also\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"empty_standard_repo/test/.gitignore\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"and_me\0A\00", align 1
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_IGNORED_DIRS = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__subdirectories_not_at_root() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = load i32, i32* @test_repo_1, align 4
  %5 = load i32, i32* @test_files_1, align 4
  %6 = call i32 @make_test_data(i32 %4, i32 %5)
  %7 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %8 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %9 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 40)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 10, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @test_ignore_status__subdirectories_not_at_root.paths_1, i64 0, i64 0), i8*** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @test_ignore_status__subdirectories_not_at_root.statuses_1, i64 0, i64 0), i32** %12, align 8
  %13 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %14 = load i32, i32* @GIT_STATUS_OPT_RECURSE_IGNORED_DIRS, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @g_repo, align 4
  %18 = load i32, i32* @cb_status__normal, align 4
  %19 = call i32 @git_status_foreach_ext(i32 %17, %struct.TYPE_8__* %1, i32 %18, %struct.TYPE_7__* %2)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cl_assert_equal_i(i32 %22, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cl_assert_equal_i(i32 0, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cl_assert_equal_i(i32 0, i32 %30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @make_test_data(i32, i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_status_foreach_ext(i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
