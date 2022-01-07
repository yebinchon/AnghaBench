; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@GIT_DIFF_PERFDATA_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_index() #0 {
  %1 = alloca %struct.TYPE_12__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = bitcast %struct.TYPE_12__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 12, i1 false)
  store i32* null, i32** %2, align 8
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  store i32 3, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %11 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %12 = or i32 %10, %11
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %16, i32* null, %struct.TYPE_12__* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %91, %0
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %94

22:                                               ; preds = %19
  %23 = call i32 @memset(%struct.TYPE_13__* %3, i32 0, i32 40)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @diff_file_cb, align 4
  %29 = load i32, i32* @diff_binary_cb, align 4
  %30 = load i32, i32* @diff_hunk_cb, align 4
  %31 = load i32, i32* @diff_line_cb, align 4
  %32 = call i32 @diff_foreach_via_iterator(i32* %27, i32 %28, i32 %29, i32 %30, i32 %31, %struct.TYPE_13__* %3)
  %33 = call i32 @cl_git_pass(i32 %32)
  br label %42

34:                                               ; preds = %22
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @diff_file_cb, align 4
  %37 = load i32, i32* @diff_binary_cb, align 4
  %38 = load i32, i32* @diff_hunk_cb, align 4
  %39 = load i32, i32* @diff_line_cb, align 4
  %40 = call i32 @git_diff_foreach(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, %struct.TYPE_13__* %3)
  %41 = call i32 @cl_git_pass(i32 %40)
  br label %42

42:                                               ; preds = %34, %26
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cl_assert_equal_i(i32 13, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 0, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_i(i32 4, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_i(i32 4, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cl_assert_equal_i(i32 1, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_i(i32 4, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @cl_assert_equal_i(i32 8, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cl_assert_equal_i(i32 14, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @cl_assert_equal_i(i32 5, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cl_assert_equal_i(i32 4, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @cl_assert_equal_i(i32 5, i32 %89)
  br label %91

91:                                               ; preds = %42
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %19

94:                                               ; preds = %19
  %95 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_DIFF_PERFDATA_INIT to i8*), i64 8, i1 false)
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @git_diff_get_perfdata(%struct.TYPE_11__* %5, i32* %96)
  %98 = call i32 @cl_git_pass(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cl_assert_equal_sz(i32 16, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cl_assert_equal_sz(i32 5, i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @git_diff_free(i32* %105)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @diff_foreach_via_iterator(i32*, i32, i32, i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_get_perfdata(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
