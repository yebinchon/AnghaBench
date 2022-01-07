; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__iterator.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i8**, i32*, i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@test_submodule_status__iterator.expected = internal global [17 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"just_a_dir/\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"just_a_dir/contents\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"just_a_file\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"not-submodule/\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"not-submodule/README.txt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"not/\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"not/README.txt\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"README.txt\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"sm_added_and_uncommited\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"sm_changed_file\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"sm_changed_index\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"sm_changed_untracked_file\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"sm_missing_commits\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@test_submodule_status__iterator.expected_flags = internal global [17 x i32] [i32 131, i32 -1, i32 132, i32 132, i32 128, i32 -1, i32 128, i32 -1, i32 132, i32 130, i32 129, i32 129, i32 129, i32 129, i32 129, i32 132, i32 0], align 16
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GIT_ITERATOR_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_TREES = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY = common dso_local global i32 0, align 4
@confirm_submodule_status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_status__iterator() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_13__, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32*, align 8
  %8 = bitcast %struct.TYPE_13__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i8** null, i8*** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i32* bitcast ([17 x i8*]* @test_submodule_status__iterator.expected to i32*), i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32 ptrtoint ([17 x i32]* @test_submodule_status__iterator.expected_flags to i32), i32* %11, align 8
  %12 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %13 = load i32, i32* @GIT_ITERATOR_IGNORE_CASE, align 4
  %14 = load i32, i32* @GIT_ITERATOR_INCLUDE_TREES, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_repository_index(i32** %7, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @git_iterator_for_workdir(i32** %1, i32 %20, i32* %21, i32* null, %struct.TYPE_13__* %2)
  %23 = call i32 @cl_git_pass(i32 %22)
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %37, %0
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_iterator_advance(%struct.TYPE_14__** %3, i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds [17 x i8*], [17 x i8*]* @test_submodule_status__iterator.expected, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_s(i8* %32, i32 %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %24

40:                                               ; preds = %24
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_iterator_free(i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @git_index_free(i32* %43)
  %45 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %46 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNMODIFIED, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_IGNORED, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @g_repo, align 4
  %56 = load i32, i32* @confirm_submodule_status, align 4
  %57 = call i32 @git_status_foreach_ext(i32 %55, %struct.TYPE_12__* %6, i32 %56, %struct.TYPE_11__* %5)
  %58 = call i32 @cl_git_pass(i32 %57)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @git_iterator_advance(%struct.TYPE_14__**, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_status_foreach_ext(i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
