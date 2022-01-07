; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8*, %struct.TYPE_9__ }
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
@__const.test_iterator_index__pathlist.expected = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)], align 16
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i8* null, align 8
@__const.test_iterator_index__pathlist.expected.9 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 16
@GIT_ITERATOR_IGNORE_CASE = common dso_local global i8* null, align 8
@__const.test_iterator_index__pathlist.expected.10 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)], align 16
@__const.test_iterator_index__pathlist.expected.11 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1
@__const.test_iterator_index__pathlist.expected.13 = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 8
@.str.14 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@__const.test_iterator_index__pathlist.expected.15 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__pathlist() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca [8 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca [8 x i8*], align 16
  %8 = alloca i64, align 8
  %9 = alloca [4 x i8*], align 16
  %10 = alloca i64, align 8
  %11 = alloca [6 x i8*], align 16
  %12 = alloca i64, align 8
  %13 = alloca [6 x i8*], align 16
  %14 = alloca i64, align 8
  %15 = alloca [5 x i8*], align 16
  %16 = alloca i64, align 8
  %17 = alloca [3 x i8*], align 16
  %18 = alloca i64, align 8
  %19 = alloca [1 x i8*], align 8
  %20 = alloca i64, align 8
  %21 = alloca [5 x i8*], align 16
  %22 = alloca i64, align 8
  %23 = alloca [2 x i8*], align 16
  %24 = alloca i64, align 8
  %25 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 40, i1 false)
  %26 = call i32 @git_vector_init(%struct.TYPE_10__* %4, i32 100, i32* @git__strcmp_cb)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 %44, i32* @g_repo, align 4
  %45 = load i32, i32* @g_repo, align 4
  %46 = call i32 @git_repository_index(i32** %3, i32 %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8**
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i8** %50, i8*** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = bitcast [8 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 16 bitcast ([8 x i8*]* @__const.test_iterator_index__pathlist.expected to i8*), i64 64, i1 false)
  store i64 8, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* null, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* null, i8** %59, align 8
  %60 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @g_repo, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @git_iterator_for_index(i32** %1, i32 %62, i32* %63, %struct.TYPE_11__* %2)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 0
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 0
  %71 = call i32 @expect_iterator_items(i32* %66, i64 %67, i8** %68, i64 %69, i8** %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @git_iterator_free(i32* %72)
  %74 = bitcast [8 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %74, i8* align 16 bitcast ([8 x i8*]* @__const.test_iterator_index__pathlist.expected.9 to i8*), i64 64, i1 false)
  store i64 8, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* null, i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* null, i8** %76, align 8
  %77 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @g_repo, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @git_iterator_for_index(i32** %1, i32 %79, i32* %80, %struct.TYPE_11__* %2)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %88 = call i32 @expect_iterator_items(i32* %83, i64 %84, i8** %85, i64 %86, i8** %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @git_iterator_free(i32* %89)
  %91 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %91, i8* align 16 bitcast ([4 x i8*]* @__const.test_iterator_index__pathlist.expected.10 to i8*), i64 32, i1 false)
  store i64 4, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* null, i8** %93, align 8
  %94 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* @g_repo, align 4
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @git_iterator_for_index(i32** %1, i32 %96, i32* %97, %struct.TYPE_11__* %2)
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %105 = call i32 @expect_iterator_items(i32* %100, i64 %101, i8** %102, i64 %103, i8** %104)
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @git_iterator_free(i32* %106)
  %108 = bitcast [6 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %108, i8 0, i64 48, i1 false)
  %109 = bitcast i8* %108 to [6 x i8*]*
  %110 = getelementptr inbounds [6 x i8*], [6 x i8*]* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %110, align 16
  %111 = getelementptr inbounds [6 x i8*], [6 x i8*]* %109, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %111, align 8
  %112 = getelementptr inbounds [6 x i8*], [6 x i8*]* %109, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %112, align 16
  %113 = getelementptr inbounds [6 x i8*], [6 x i8*]* %109, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %113, align 8
  %114 = getelementptr inbounds [6 x i8*], [6 x i8*]* %109, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8** %114, align 16
  %115 = getelementptr inbounds [6 x i8*], [6 x i8*]* %109, i32 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %115, align 8
  store i64 6, i64* %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* null, i8** %117, align 8
  %118 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %118, i8** %119, align 8
  %120 = load i32, i32* @g_repo, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @git_iterator_for_index(i32** %1, i32 %120, i32* %121, %struct.TYPE_11__* %2)
  %123 = call i32 @cl_git_pass(i32 %122)
  %124 = load i32*, i32** %1, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 0
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 0
  %129 = call i32 @expect_iterator_items(i32* %124, i64 %125, i8** %126, i64 %127, i8** %128)
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 @git_iterator_free(i32* %130)
  %132 = bitcast [6 x i8*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %132, i8 0, i64 48, i1 false)
  %133 = bitcast i8* %132 to [6 x i8*]*
  %134 = getelementptr inbounds [6 x i8*], [6 x i8*]* %133, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %134, align 16
  %135 = getelementptr inbounds [6 x i8*], [6 x i8*]* %133, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %135, align 8
  %136 = getelementptr inbounds [6 x i8*], [6 x i8*]* %133, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %136, align 16
  %137 = getelementptr inbounds [6 x i8*], [6 x i8*]* %133, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %137, align 8
  %138 = getelementptr inbounds [6 x i8*], [6 x i8*]* %133, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %138, align 16
  %139 = getelementptr inbounds [6 x i8*], [6 x i8*]* %133, i32 0, i32 5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %139, align 8
  store i64 6, i64* %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* null, i8** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %141, align 8
  %142 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %142, i8** %143, align 8
  %144 = load i32, i32* @g_repo, align 4
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @git_iterator_for_index(i32** %1, i32 %144, i32* %145, %struct.TYPE_11__* %2)
  %147 = call i32 @cl_git_pass(i32 %146)
  %148 = load i32*, i32** %1, align 8
  %149 = load i64, i64* %14, align 8
  %150 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 0
  %151 = load i64, i64* %14, align 8
  %152 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 0
  %153 = call i32 @expect_iterator_items(i32* %148, i64 %149, i8** %150, i64 %151, i8** %152)
  %154 = load i32*, i32** %1, align 8
  %155 = call i32 @git_iterator_free(i32* %154)
  %156 = bitcast [5 x i8*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %156, i8 0, i64 40, i1 false)
  %157 = bitcast i8* %156 to [5 x i8*]*
  %158 = getelementptr inbounds [5 x i8*], [5 x i8*]* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %158, align 16
  %159 = getelementptr inbounds [5 x i8*], [5 x i8*]* %157, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %159, align 8
  %160 = getelementptr inbounds [5 x i8*], [5 x i8*]* %157, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %160, align 16
  %161 = getelementptr inbounds [5 x i8*], [5 x i8*]* %157, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %161, align 8
  %162 = getelementptr inbounds [5 x i8*], [5 x i8*]* %157, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %162, align 16
  store i64 5, i64* %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* null, i8** %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %164, align 8
  %165 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %165, i8** %166, align 8
  %167 = load i32, i32* @g_repo, align 4
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @git_iterator_for_index(i32** %1, i32 %167, i32* %168, %struct.TYPE_11__* %2)
  %170 = call i32 @cl_git_pass(i32 %169)
  %171 = load i32*, i32** %1, align 8
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %174 = load i64, i64* %16, align 8
  %175 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %176 = call i32 @expect_iterator_items(i32* %171, i64 %172, i8** %173, i64 %174, i8** %175)
  %177 = load i32*, i32** %1, align 8
  %178 = call i32 @git_iterator_free(i32* %177)
  %179 = bitcast [3 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %179, i8* align 16 bitcast ([3 x i8*]* @__const.test_iterator_index__pathlist.expected.11 to i8*), i64 24, i1 false)
  store i64 3, i64* %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %181, align 8
  %182 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %182, i8** %183, align 8
  %184 = load i32, i32* @g_repo, align 4
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @git_iterator_for_index(i32** %1, i32 %184, i32* %185, %struct.TYPE_11__* %2)
  %187 = call i32 @cl_git_pass(i32 %186)
  %188 = load i32*, i32** %1, align 8
  %189 = load i64, i64* %18, align 8
  %190 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  %191 = load i64, i64* %18, align 8
  %192 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  %193 = call i32 @expect_iterator_items(i32* %188, i64 %189, i8** %190, i64 %191, i8** %192)
  %194 = load i32*, i32** %1, align 8
  %195 = call i32 @git_iterator_free(i32* %194)
  %196 = bitcast [1 x i8*]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 bitcast ([1 x i8*]* @__const.test_iterator_index__pathlist.expected.13 to i8*), i64 8, i1 false)
  store i64 1, i64* %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %198, align 8
  %199 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %199, i8** %200, align 8
  %201 = load i32, i32* @g_repo, align 4
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @git_iterator_for_index(i32** %1, i32 %201, i32* %202, %struct.TYPE_11__* %2)
  %204 = call i32 @cl_git_pass(i32 %203)
  %205 = load i32*, i32** %1, align 8
  %206 = load i64, i64* %20, align 8
  %207 = getelementptr inbounds [1 x i8*], [1 x i8*]* %19, i64 0, i64 0
  %208 = load i64, i64* %20, align 8
  %209 = getelementptr inbounds [1 x i8*], [1 x i8*]* %19, i64 0, i64 0
  %210 = call i32 @expect_iterator_items(i32* %205, i64 %206, i8** %207, i64 %208, i8** %209)
  %211 = load i32*, i32** %1, align 8
  %212 = call i32 @git_iterator_free(i32* %211)
  %213 = bitcast [5 x i8*]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %213, i8 0, i64 40, i1 false)
  %214 = bitcast i8* %213 to [5 x i8*]*
  %215 = getelementptr inbounds [5 x i8*], [5 x i8*]* %214, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %215, align 16
  %216 = getelementptr inbounds [5 x i8*], [5 x i8*]* %214, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %216, align 8
  %217 = getelementptr inbounds [5 x i8*], [5 x i8*]* %214, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %217, align 16
  %218 = getelementptr inbounds [5 x i8*], [5 x i8*]* %214, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %218, align 8
  %219 = getelementptr inbounds [5 x i8*], [5 x i8*]* %214, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8** %219, align 16
  store i64 5, i64* %22, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %221, align 8
  %222 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %222, i8** %223, align 8
  %224 = load i32, i32* @g_repo, align 4
  %225 = load i32*, i32** %3, align 8
  %226 = call i32 @git_iterator_for_index(i32** %1, i32 %224, i32* %225, %struct.TYPE_11__* %2)
  %227 = call i32 @cl_git_pass(i32 %226)
  %228 = load i32*, i32** %1, align 8
  %229 = load i64, i64* %22, align 8
  %230 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 0
  %231 = load i64, i64* %22, align 8
  %232 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 0
  %233 = call i32 @expect_iterator_items(i32* %228, i64 %229, i8** %230, i64 %231, i8** %232)
  %234 = load i32*, i32** %1, align 8
  %235 = call i32 @git_iterator_free(i32* %234)
  %236 = bitcast [2 x i8*]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %236, i8* align 16 bitcast ([2 x i8*]* @__const.test_iterator_index__pathlist.expected.15 to i8*), i64 16, i1 false)
  store i64 2, i64* %24, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8** %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %238, align 8
  %239 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %239, i8** %240, align 8
  %241 = load i32, i32* @g_repo, align 4
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @git_iterator_for_index(i32** %1, i32 %241, i32* %242, %struct.TYPE_11__* %2)
  %244 = call i32 @cl_git_pass(i32 %243)
  %245 = load i32*, i32** %1, align 8
  %246 = load i64, i64* %24, align 8
  %247 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 0
  %248 = load i64, i64* %24, align 8
  %249 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 0
  %250 = call i32 @expect_iterator_items(i32* %245, i64 %246, i8** %247, i64 %248, i8** %249)
  %251 = load i32*, i32** %1, align 8
  %252 = call i32 @git_iterator_free(i32* %251)
  %253 = load i32*, i32** %3, align 8
  %254 = call i32 @git_index_free(i32* %253)
  %255 = call i32 @git_vector_free(%struct.TYPE_10__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_10__*, i32, i32*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
