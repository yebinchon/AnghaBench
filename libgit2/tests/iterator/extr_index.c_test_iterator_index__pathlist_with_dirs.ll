; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_with_dirs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_with_dirs.c"
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
define dso_local void @test_iterator_index__pathlist_with_dirs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca [5 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca [5 x i8*], align 16
  %8 = alloca i64, align 8
  %9 = alloca [5 x i8*], align 16
  %10 = alloca i64, align 8
  %11 = alloca [5 x i8*], align 16
  %12 = alloca i64, align 8
  %13 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %14 = call i32 @git_vector_init(%struct.TYPE_11__* %4, i32 5, i32* null)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* @g_repo, align 4
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_repository_index(i32** %3, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = bitcast [5 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false)
  %21 = bitcast i8* %20 to [5 x i8*]*
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %25, align 8
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %26, align 16
  store i64 5, i64* %6, align 8
  %27 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %28 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8**
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i8** %32, i8*** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @g_repo, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @git_iterator_for_index(i32** %1, i32 %41, i32* %42, %struct.TYPE_12__* %2)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  %50 = call i32 @expect_iterator_items(i32* %45, i64 %46, i8** %47, i64 %48, i8** %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_iterator_free(i32* %51)
  %53 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %53, i8 0, i64 40, i1 false)
  %54 = bitcast i8* %53 to [5 x i8*]*
  %55 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %55, align 16
  %56 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %56, align 8
  %57 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %57, align 16
  %58 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %58, align 8
  %59 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %59, align 16
  store i64 5, i64* %8, align 8
  %60 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %61 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8**
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i8** %65, i8*** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* @g_repo, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @git_iterator_for_index(i32** %1, i32 %74, i32* %75, %struct.TYPE_12__* %2)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %83 = call i32 @expect_iterator_items(i32* %78, i64 %79, i8** %80, i64 %81, i8** %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @git_iterator_free(i32* %84)
  %86 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %87 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8**
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i8** %91, i8*** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* @g_repo, align 4
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @git_iterator_for_index(i32** %1, i32 %100, i32* %101, %struct.TYPE_12__* %2)
  %103 = call i32 @cl_git_pass(i32 %102)
  %104 = load i32, i32* @GIT_ITEROVER, align 4
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @git_iterator_advance(i32* null, i32* %105)
  %107 = call i32 @cl_git_fail_with(i32 %104, i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @git_iterator_free(i32* %108)
  %110 = bitcast [5 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %110, i8 0, i64 40, i1 false)
  %111 = bitcast i8* %110 to [5 x i8*]*
  %112 = getelementptr inbounds [5 x i8*], [5 x i8*]* %111, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %112, align 16
  %113 = getelementptr inbounds [5 x i8*], [5 x i8*]* %111, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %113, align 8
  %114 = getelementptr inbounds [5 x i8*], [5 x i8*]* %111, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %114, align 16
  %115 = getelementptr inbounds [5 x i8*], [5 x i8*]* %111, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %115, align 8
  %116 = getelementptr inbounds [5 x i8*], [5 x i8*]* %111, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %116, align 16
  store i64 5, i64* %10, align 8
  %117 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %118 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %119 = call i32 @cl_git_pass(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8**
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i8** %122, i8*** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %129, i8** %130, align 8
  %131 = load i32, i32* @g_repo, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @git_iterator_for_index(i32** %1, i32 %131, i32* %132, %struct.TYPE_12__* %2)
  %134 = call i32 @cl_git_pass(i32 %133)
  %135 = load i32*, i32** %1, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %140 = call i32 @expect_iterator_items(i32* %135, i64 %136, i8** %137, i64 %138, i8** %139)
  %141 = load i32*, i32** %1, align 8
  %142 = call i32 @git_iterator_free(i32* %141)
  %143 = bitcast [5 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %143, i8 0, i64 40, i1 false)
  %144 = bitcast i8* %143 to [5 x i8*]*
  %145 = getelementptr inbounds [5 x i8*], [5 x i8*]* %144, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %145, align 16
  %146 = getelementptr inbounds [5 x i8*], [5 x i8*]* %144, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %146, align 8
  %147 = getelementptr inbounds [5 x i8*], [5 x i8*]* %144, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %147, align 16
  %148 = getelementptr inbounds [5 x i8*], [5 x i8*]* %144, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %148, align 8
  %149 = getelementptr inbounds [5 x i8*], [5 x i8*]* %144, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %149, align 16
  store i64 5, i64* %12, align 8
  %150 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %151 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %152 = call i32 @cl_git_pass(i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i8**
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i8** %155, i8*** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %162, i8** %163, align 8
  %164 = load i32, i32* @g_repo, align 4
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @git_iterator_for_index(i32** %1, i32 %164, i32* %165, %struct.TYPE_12__* %2)
  %167 = call i32 @cl_git_pass(i32 %166)
  %168 = load i32*, i32** %1, align 8
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %171 = load i64, i64* %12, align 8
  %172 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %173 = call i32 @expect_iterator_items(i32* %168, i64 %169, i8** %170, i64 %171, i8** %172)
  %174 = load i32*, i32** %1, align 8
  %175 = call i32 @git_iterator_free(i32* %174)
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @git_index_free(i32* %176)
  %178 = call i32 @git_vector_free(%struct.TYPE_11__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_vector_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_iterator_advance(i32*, i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
