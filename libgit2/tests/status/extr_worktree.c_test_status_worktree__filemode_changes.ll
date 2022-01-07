; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__filemode_changes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__filemode_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"filemodes\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"core.filemode\00", align 1
@filemode_count = common dso_local global i32 0, align 4
@filemode_statuses = common dso_local global i64* null, align 8
@GIT_STATUS_WT_MODIFIED = common dso_local global i64 0, align 8
@GIT_STATUS_CURRENT = common dso_local global i64 0, align 8
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@filemode_paths = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__filemode_changes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  %5 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %7 = call i64 (...) @cl_is_chmod_supported()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @cl_repo_set_bool(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %38

12:                                               ; preds = %0
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @cl_repo_set_bool(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %34, %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @filemode_count, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i64*, i64** @filemode_statuses, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GIT_STATUS_WT_MODIFIED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i64, i64* @GIT_STATUS_CURRENT, align 8
  %29 = load i64*, i64** @filemode_statuses, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 %28, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %15

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37, %9
  %39 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %40 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_IGNORED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNMODIFIED, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 32)
  %46 = load i32, i32* @filemode_count, align 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @filemode_paths, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  store i32 %48, i32* %49, align 4
  %50 = load i64*, i64** @filemode_statuses, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i64* %50, i64** %51, align 8
  %52 = load i32*, i32** %1, align 8
  %53 = load i32, i32* @cb_status__normal, align 4
  %54 = call i32 @git_status_foreach_ext(i32* %52, %struct.TYPE_8__* %3, i32 %53, %struct.TYPE_7__* %2)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cl_assert_equal_i(i32 %57, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_i(i32 0, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cl_assert_equal_i(i32 0, i32 %65)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cl_is_chmod_supported(...) #1

declare dso_local i32 @cl_repo_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_foreach_ext(i32*, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
