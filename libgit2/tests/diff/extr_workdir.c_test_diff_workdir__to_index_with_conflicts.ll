; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_with_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_with_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"subdir/modified_file\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"subdir/rename_conflict\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"2bd0a343aeef7a2cf0d158478966a6e587ff3863\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_CONFLICTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_index_with_conflicts() #0 {
  %1 = alloca %struct.TYPE_12__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = bitcast %struct.TYPE_12__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %2, align 8
  %8 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* @g_repo, align 4
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  store i32 3, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 33188, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %17 = call i32 @git_oid_fromstr(i32* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i32 33188, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %21 = call i32 @git_oid_fromstr(i32* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_repository_index(i32** %3, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_index_conflict_add(i32* %25, i32* null, %struct.TYPE_11__* %4, %struct.TYPE_11__* %5)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %28, i32* %29, %struct.TYPE_12__* %1)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @diff_file_cb, align 4
  %34 = load i32, i32* @diff_binary_cb, align 4
  %35 = load i32, i32* @diff_hunk_cb, align 4
  %36 = load i32, i32* @diff_line_cb, align 4
  %37 = call i32 @diff_foreach_via_iterator(i32* %32, i32 %33, i32 %34, i32 %35, i32 %36, %struct.TYPE_13__* %6)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cl_assert_equal_i(i32 9, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_i(i32 0, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_i(i32 4, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cl_assert_equal_i(i32 3, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @GIT_DELTA_CONFLICTED, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_i(i32 2, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cl_assert_equal_i(i32 7, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cl_assert_equal_i(i32 12, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cl_assert_equal_i(i32 4, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cl_assert_equal_i(i32 3, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @cl_assert_equal_i(i32 5, i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @git_diff_free(i32* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @git_index_free(i32* %83)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_conflict_add(i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @diff_foreach_via_iterator(i32*, i32, i32, i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
