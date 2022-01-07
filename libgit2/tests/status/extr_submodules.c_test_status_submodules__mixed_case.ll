; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__mixed_case.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__mixed_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_IGNORED_DIRS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_FROM_REWRITES = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNREADABLE = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_submodules__mixed_case() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %7 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_IGNORED, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNMODIFIED, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GIT_STATUS_OPT_RECURSE_IGNORED_DIRS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GIT_STATUS_OPT_RENAMES_FROM_REWRITES, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNREADABLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = call i32 (...) @setup_fixture_submod3()
  store i32 %26, i32* @g_repo, align 4
  %27 = load i32, i32* @g_repo, align 4
  %28 = call i32 @git_status_list_new(i32** %1, i32 %27, %struct.TYPE_10__* %2)
  %29 = call i32 @cl_git_pass(i32 %28)
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %58, %0
  %31 = load i64, i64* %4, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @git_status_list_entrycount(i32* %32)
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i32*, i32** %1, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call %struct.TYPE_11__* @git_status_byindex(i32* %36, i64 %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %3, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @strcmp(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %58

53:                                               ; preds = %43, %35
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cl_assert_equal_i(i32 0, i32 %56)
  br label %58

58:                                               ; preds = %53, %52
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %30

61:                                               ; preds = %30
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @git_status_list_free(i32* %62)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod3(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_status_list_new(i32**, i32, %struct.TYPE_10__*) #2

declare dso_local i64 @git_status_list_entrycount(i32*) #2

declare dso_local %struct.TYPE_11__* @git_status_byindex(i32*, i64) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_status_list_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
