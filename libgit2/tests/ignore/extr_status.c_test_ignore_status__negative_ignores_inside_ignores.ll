; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__negative_ignores_inside_ignores.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__negative_ignores_inside_ignores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8**, i32*, i32, i32, i32 }

@test_ignore_status__negative_ignores_inside_ignores.test_files = internal global [5 x i8*] [i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [40 x i8] c"empty_standard_repo/top/mid/btm/tracked\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"empty_standard_repo/top/mid/btm/untracked\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"empty_standard_repo/zoo/bar\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"empty_standard_repo/zoo/foo/bar\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"top\0A!top/mid/btm\0Azoo/*\0A!zoo/bar\0A!zoo/foo/bar\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"top/mid/btm/tracked\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@test_ignore_status__negative_ignores_inside_ignores.files = internal global [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c".gitignore\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"top/mid/btm/untracked\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"zoo/bar\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"zoo/foo/bar\00", align 1
@test_ignore_status__negative_ignores_inside_ignores.statuses = internal constant [5 x i32] [i32 128, i32 129, i32 130, i32 128, i32 130], align 16
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_IGNORED_DIRS = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"foo/bar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__negative_ignores_inside_ignores() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = call i32 @make_test_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @test_ignore_status__negative_ignores_inside_ignores.test_files, i64 0, i64 0))
  %4 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %5 = call i32 @add_one_to_index(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %6 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %7 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 40)
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 5, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @test_ignore_status__negative_ignores_inside_ignores.files, i64 0, i64 0), i8*** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_ignore_status__negative_ignores_inside_ignores.statuses, i64 0, i64 0), i32** %10, align 8
  %11 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %12 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_IGNORED, align 4
  %13 = or i32 %11, %12
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
  %32 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %33 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %34 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @make_test_data(i8*, i8**) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @add_one_to_index(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_foreach_ext(i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @assert_is_ignored(i8*) #1

declare dso_local i32 @refute_is_ignored(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
