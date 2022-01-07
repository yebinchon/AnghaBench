; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__sorting_by_case.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__sorting_by_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"icase/B\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"new stuff\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"icase/c\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"icase/g\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"icase/H\00", align 1
@icase_paths = common dso_local global i8* null, align 8
@icase_statuses = common dso_local global i8* null, align 8
@case_paths = common dso_local global i8* null, align 8
@case_statuses = common dso_local global i8* null, align 8
@GIT_STATUS_OPT_SORT_CASE_SENSITIVELY = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__sorting_by_case() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_repository_index(i32** %2, i32* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_index_caps(i32* %11)
  %13 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_index_free(i32* %17)
  %19 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 32)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @cb_status__normal, align 4
  %25 = call i32 @git_status_foreach_ext(i32* %23, %struct.TYPE_8__* %3, i32 %24, %struct.TYPE_7__* %5)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_i(i32 %28, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cl_assert_equal_i(i32 0, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cl_assert_equal_i(i32 0, i32 %36)
  %38 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @p_unlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @cl_must_pass(i32 %39)
  %41 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @p_unlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i32 @cl_must_pass(i32 %42)
  %44 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 32)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %0
  %49 = load i8*, i8** @icase_paths, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i32* %50, i32** %51, align 8
  %52 = load i8*, i8** @icase_statuses, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32* %53, i32** %54, align 8
  br label %62

55:                                               ; preds = %0
  %56 = load i8*, i8** @case_paths, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i32* %57, i32** %58, align 8
  %59 = load i8*, i8** @case_statuses, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32* %60, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* @cb_status__normal, align 4
  %65 = call i32 @git_status_foreach_ext(i32* %63, %struct.TYPE_8__* %3, i32 %64, %struct.TYPE_7__* %5)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cl_assert_equal_i(i32 %68, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cl_assert_equal_i(i32 0, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cl_assert_equal_i(i32 0, i32 %76)
  %78 = load i32, i32* @GIT_STATUS_OPT_SORT_CASE_SENSITIVELY, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 32)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = load i8*, i8** @case_paths, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i32* %83, i32** %84, align 8
  %85 = load i8*, i8** @case_statuses, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32* %86, i32** %87, align 8
  %88 = load i32*, i32** %1, align 8
  %89 = load i32, i32* @cb_status__normal, align 4
  %90 = call i32 @git_status_foreach_ext(i32* %88, %struct.TYPE_8__* %3, i32 %89, %struct.TYPE_7__* %5)
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cl_assert_equal_i(i32 %93, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @cl_assert_equal_i(i32 0, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @cl_assert_equal_i(i32 0, i32 %101)
  %103 = load i32, i32* @GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 32)
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 4, i32* %106, align 8
  %107 = load i8*, i8** @icase_paths, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i32* %108, i32** %109, align 8
  %110 = load i8*, i8** @icase_statuses, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32* %111, i32** %112, align 8
  %113 = load i32*, i32** %1, align 8
  %114 = load i32, i32* @cb_status__normal, align 4
  %115 = call i32 @git_status_foreach_ext(i32* %113, %struct.TYPE_8__* %3, i32 %114, %struct.TYPE_7__* %5)
  %116 = call i32 @cl_git_pass(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @cl_assert_equal_i(i32 %118, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @cl_assert_equal_i(i32 0, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @cl_assert_equal_i(i32 0, i32 %126)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_caps(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @git_status_foreach_ext(i32*, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
