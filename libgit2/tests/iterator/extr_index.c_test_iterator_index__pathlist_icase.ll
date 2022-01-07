; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_icase.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_icase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@git__strcmp_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"k/1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"k/a\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"L/1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"k/Z\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__pathlist_icase() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 32, i1 false)
  %7 = call i32 @git_vector_init(%struct.TYPE_10__* %5, i32 100, i32* @git__strcmp_cb)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @git_vector_insert(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_vector_insert(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_vector_insert(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_vector_insert(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_vector_insert(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @git_vector_insert(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = call i32 @git_vector_insert(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_vector_insert(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 %25, i32* @g_repo, align 4
  %26 = load i32, i32* @g_repo, align 4
  %27 = call i32 @git_repository_index(i32** %3, i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_index_caps(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @git_index_set_caps(i32* %31, i32 %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8**
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i8** %40, i8*** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @g_repo, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_iterator_for_index(i32** %1, i32 %49, i32* %50, %struct.TYPE_11__* %2)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @expect_iterator_items(i32* %53, i32 3, i32* null, i32 3, i32* null)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @git_iterator_free(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @g_repo, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @git_iterator_for_index(i32** %1, i32 %59, i32* %60, %struct.TYPE_11__* %2)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @expect_iterator_items(i32* %63, i32 1, i32* null, i32 1, i32* null)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @git_iterator_free(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @git_index_set_caps(i32* %67, i32 %70)
  %72 = call i32 @cl_git_pass(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @g_repo, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @git_iterator_for_index(i32** %1, i32 %75, i32* %76, %struct.TYPE_11__* %2)
  %78 = call i32 @cl_git_pass(i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @expect_iterator_items(i32* %79, i32 5, i32* null, i32 5, i32* null)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @git_iterator_free(i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %84, align 8
  %85 = load i32, i32* @g_repo, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @git_iterator_for_index(i32** %1, i32 %85, i32* %86, %struct.TYPE_11__* %2)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @expect_iterator_items(i32* %89, i32 2, i32* null, i32 2, i32* null)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @git_iterator_free(i32* %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @git_index_set_caps(i32* %93, i32 %94)
  %96 = call i32 @cl_git_pass(i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @git_index_free(i32* %97)
  %99 = call i32 @git_vector_free(%struct.TYPE_10__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_10__*, i32, i32*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_caps(i32*) #2

declare dso_local i32 @git_index_set_caps(i32*, i32) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
