; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__pathlist_with_dirs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__pathlist_with_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"k/1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"k/B\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"k/a\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"k/c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"k/\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"K/\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_ITERATOR_IGNORE_CASE = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"K\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__pathlist_with_dirs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca [5 x i8*], align 16
  %5 = alloca i64, align 8
  %6 = alloca [5 x i8*], align 16
  %7 = alloca i64, align 8
  %8 = alloca [5 x i8*], align 16
  %9 = alloca i64, align 8
  %10 = alloca [5 x i8*], align 16
  %11 = alloca i64, align 8
  %12 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %13 = call i32 @git_vector_init(%struct.TYPE_11__* %3, i32 5, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* @g_repo, align 4
  %16 = bitcast [5 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false)
  %17 = bitcast i8* %16 to [5 x i8*]*
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %21, align 8
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %22, align 16
  store i64 5, i64* %5, align 8
  %23 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %24 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8**
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i8** %28, i8*** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* @g_repo, align 4
  %38 = call i32 @git_iterator_for_workdir(i32** %1, i32 %37, i32* null, i32* null, %struct.TYPE_12__* %2)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %45 = call i32 @expect_iterator_items(i32* %40, i64 %41, i8** %42, i64 %43, i8** %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @git_iterator_free(i32* %46)
  %48 = bitcast [5 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %48, i8 0, i64 40, i1 false)
  %49 = bitcast i8* %48 to [5 x i8*]*
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %50, align 16
  %51 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %51, align 8
  %52 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %52, align 16
  %53 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %53, align 8
  %54 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %54, align 16
  store i64 5, i64* %7, align 8
  %55 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %56 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8**
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i8** %60, i8*** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* @g_repo, align 4
  %70 = call i32 @git_iterator_for_workdir(i32** %1, i32 %69, i32* null, i32* null, %struct.TYPE_12__* %2)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %77 = call i32 @expect_iterator_items(i32* %72, i64 %73, i8** %74, i64 %75, i8** %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @git_iterator_free(i32* %78)
  %80 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %81 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8**
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i8** %85, i8*** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @g_repo, align 4
  %95 = call i32 @git_iterator_for_workdir(i32** %1, i32 %94, i32* null, i32* null, %struct.TYPE_12__* %2)
  %96 = call i32 @cl_git_pass(i32 %95)
  %97 = load i32, i32* @GIT_ITEROVER, align 4
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @git_iterator_advance(i32* null, i32* %98)
  %100 = call i32 @cl_git_fail_with(i32 %97, i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @git_iterator_free(i32* %101)
  %103 = bitcast [5 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %103, i8 0, i64 40, i1 false)
  %104 = bitcast i8* %103 to [5 x i8*]*
  %105 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %105, align 16
  %106 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %106, align 8
  %107 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %107, align 16
  %108 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %108, align 8
  %109 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %109, align 16
  store i64 5, i64* %9, align 8
  %110 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %111 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %112 = call i32 @cl_git_pass(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8**
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i8** %115, i8*** %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  %124 = load i32, i32* @g_repo, align 4
  %125 = call i32 @git_iterator_for_workdir(i32** %1, i32 %124, i32* null, i32* null, %struct.TYPE_12__* %2)
  %126 = call i32 @cl_git_pass(i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  %132 = call i32 @expect_iterator_items(i32* %127, i64 %128, i8** %129, i64 %130, i8** %131)
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @git_iterator_free(i32* %133)
  %135 = bitcast [5 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %135, i8 0, i64 40, i1 false)
  %136 = bitcast i8* %135 to [5 x i8*]*
  %137 = getelementptr inbounds [5 x i8*], [5 x i8*]* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %137, align 16
  %138 = getelementptr inbounds [5 x i8*], [5 x i8*]* %136, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %138, align 8
  %139 = getelementptr inbounds [5 x i8*], [5 x i8*]* %136, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %139, align 16
  %140 = getelementptr inbounds [5 x i8*], [5 x i8*]* %136, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %140, align 8
  %141 = getelementptr inbounds [5 x i8*], [5 x i8*]* %136, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %141, align 16
  store i64 5, i64* %11, align 8
  %142 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %143 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %144 = call i32 @cl_git_pass(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i8**
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i8** %147, i8*** %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %154, i8** %155, align 8
  %156 = load i32, i32* @g_repo, align 4
  %157 = call i32 @git_iterator_for_workdir(i32** %1, i32 %156, i32* null, i32* null, %struct.TYPE_12__* %2)
  %158 = call i32 @cl_git_pass(i32 %157)
  %159 = load i32*, i32** %1, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %164 = call i32 @expect_iterator_items(i32* %159, i64 %160, i8** %161, i64 %162, i8** %163)
  %165 = load i32*, i32** %1, align 8
  %166 = call i32 @git_iterator_free(i32* %165)
  %167 = call i32 @git_vector_free(%struct.TYPE_11__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_vector_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_iterator_advance(i32*, i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
