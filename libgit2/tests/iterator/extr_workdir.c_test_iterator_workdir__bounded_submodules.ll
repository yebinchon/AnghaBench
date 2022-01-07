; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__bounded_submodules.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__bounded_submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8**, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@__const.test_iterator_workdir__bounded_submodules.expected = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)], align 8
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i8* null, align 8
@__const.test_iterator_workdir__bounded_submodules.expected.1 = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)], align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"sm_changed_head/\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"sm_changed_index\00", align 1
@__const.test_iterator_workdir__bounded_submodules.expected.4 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)], align 16
@__const.test_iterator_workdir__bounded_submodules.expected.5 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__bounded_submodules() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1 x i8*], align 8
  %7 = alloca i64, align 8
  %8 = alloca [1 x i8*], align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i64, align 8
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i64, align 8
  %14 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 40, i1 false)
  %15 = call i32 @git_vector_init(%struct.TYPE_11__* %3, i32 5, i32* null)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 (...) @setup_fixture_submod2()
  store i32 %17, i32* @g_repo, align 4
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_repository_index(i32** %4, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_repository_head_tree(i32** %5, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = bitcast [1 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast ([1 x i8*]* @__const.test_iterator_workdir__bounded_submodules.expected to i8*), i64 8, i1 false)
  store i64 1, i64* %7, align 8
  %25 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %26 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8**
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i8** %30, i8*** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @git_iterator_for_workdir(i32** %1, i32 %39, i32* %40, i32* %41, %struct.TYPE_12__* %2)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %49 = call i32 @expect_iterator_items(i32* %44, i64 %45, i8** %46, i64 %47, i8** %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @git_iterator_free(i32* %50)
  %52 = bitcast [1 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 bitcast ([1 x i8*]* @__const.test_iterator_workdir__bounded_submodules.expected.1 to i8*), i64 8, i1 false)
  store i64 1, i64* %9, align 8
  %53 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %54 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8**
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i8** %58, i8*** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* @g_repo, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @git_iterator_for_workdir(i32** %1, i32 %67, i32* %68, i32* %69, %struct.TYPE_12__* %2)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %77 = call i32 @expect_iterator_items(i32* %72, i64 %73, i8** %74, i64 %75, i8** %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @git_iterator_free(i32* %78)
  %80 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %80, i8* align 16 bitcast ([2 x i8*]* @__const.test_iterator_workdir__bounded_submodules.expected.4 to i8*), i64 16, i1 false)
  store i64 2, i64* %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i8** null, i8*** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @g_repo, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @git_iterator_for_workdir(i32** %1, i32 %89, i32* %90, i32* %91, %struct.TYPE_12__* %2)
  %93 = call i32 @cl_git_pass(i32 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %99 = call i32 @expect_iterator_items(i32* %94, i64 %95, i8** %96, i64 %97, i8** %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @git_iterator_free(i32* %100)
  %102 = bitcast [2 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %102, i8* align 16 bitcast ([2 x i8*]* @__const.test_iterator_workdir__bounded_submodules.expected.5 to i8*), i64 16, i1 false)
  store i64 2, i64* %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i8** null, i8*** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  store i8* %109, i8** %110, align 8
  %111 = load i32, i32* @g_repo, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @git_iterator_for_workdir(i32** %1, i32 %111, i32* %112, i32* %113, %struct.TYPE_12__* %2)
  %115 = call i32 @cl_git_pass(i32 %114)
  %116 = load i32*, i32** %1, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %121 = call i32 @expect_iterator_items(i32* %116, i64 %117, i8** %118, i64 %119, i8** %120)
  %122 = load i32*, i32** %1, align 8
  %123 = call i32 @git_iterator_free(i32* %122)
  %124 = call i32 @git_vector_free(%struct.TYPE_11__* %3)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @git_index_free(i32* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @git_tree_free(i32* %127)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_repository_head_tree(i32**, i32) #2

declare dso_local i32 @git_vector_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_11__*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
