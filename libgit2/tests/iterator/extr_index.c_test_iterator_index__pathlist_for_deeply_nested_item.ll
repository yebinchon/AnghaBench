; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_for_deeply_nested_item.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_for_deeply_nested_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item7\00", align 1
@__const.test_iterator_index__pathlist_for_deeply_nested_item.expected = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)], align 8
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item1\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item2\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item3\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item4\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item5\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item6\00", align 1
@__const.test_iterator_index__pathlist_for_deeply_nested_item.expected.9 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"item1/item3/item5/\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"item1/item3/item0\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"item1/item3/item1/item0\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"item1/item3/item1/item1\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"item1/item3/item1/item2\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"item1/item3/item1/item3\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"item1/item3/item1/item4\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"item1/item3/item1/item5\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"item1/item3/item1/item6\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"item1/item3/item1/item7\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"item1/item3/item2\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"item1/item3/item3/item0\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"item1/item3/item3/item1\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"item1/item3/item3/item2\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"item1/item3/item3/item3\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"item1/item3/item3/item4\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"item1/item3/item3/item5\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"item1/item3/item3/item6\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"item1/item3/item3/item7\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"item1/item3/item4\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"item1/item3/item6\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"item1/item3/item7/item0\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"item1/item3/item7/item1\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"item1/item3/item7/item2\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"item1/item3/item7/item3\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"item1/item3/item7/item4\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"item1/item3/item7/item5\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"item1/item3/item7/item6\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"item1/item3/item7/item7\00", align 1
@__const.test_iterator_index__pathlist_for_deeply_nested_item.expected.39 = private unnamed_addr constant [36 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0)], align 16
@.str.40 = private unnamed_addr constant [13 x i8] c"item1/item3/\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"item0\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"item1/item2\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"item5/item7/item4\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"item6\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"item7/item3/item1/item6\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"item2/\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"itemN\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"item1/itemA\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"item5/item3/item4/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__pathlist_for_deeply_nested_item() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca [1 x i8*], align 8
  %6 = alloca i64, align 8
  %7 = alloca [8 x i8*], align 16
  %8 = alloca i64, align 8
  %9 = alloca [36 x i8*], align 16
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
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @create_paths(i32* %20, i32* null, i32 3)
  %22 = bitcast [1 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast ([1 x i8*]* @__const.test_iterator_index__pathlist_for_deeply_nested_item.expected to i8*), i64 8, i1 false)
  store i64 1, i64* %6, align 8
  %23 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %24 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8**
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i8** %28, i8*** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @git_iterator_for_index(i32** %1, i32 %37, i32* %38, %struct.TYPE_12__* %2)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0
  %46 = call i32 @expect_iterator_items(i32* %41, i64 %42, i8** %43, i64 %44, i8** %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_iterator_free(i32* %47)
  %49 = bitcast [8 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 bitcast ([8 x i8*]* @__const.test_iterator_index__pathlist_for_deeply_nested_item.expected.9 to i8*), i64 64, i1 false)
  store i64 8, i64* %8, align 8
  %50 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %51 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8**
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i8** %55, i8*** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* @g_repo, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @git_iterator_for_index(i32** %1, i32 %64, i32* %65, %struct.TYPE_12__* %2)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %73 = call i32 @expect_iterator_items(i32* %68, i64 %69, i8** %70, i64 %71, i8** %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @git_iterator_free(i32* %74)
  %76 = bitcast [36 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %76, i8* align 16 bitcast ([36 x i8*]* @__const.test_iterator_index__pathlist_for_deeply_nested_item.expected.39 to i8*), i64 288, i1 false)
  store i64 36, i64* %10, align 8
  %77 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %78 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0))
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8**
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i8** %82, i8*** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* @g_repo, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @git_iterator_for_index(i32** %1, i32 %91, i32* %92, %struct.TYPE_12__* %2)
  %94 = call i32 @cl_git_pass(i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds [36 x i8*], [36 x i8*]* %9, i64 0, i64 0
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds [36 x i8*], [36 x i8*]* %9, i64 0, i64 0
  %100 = call i32 @expect_iterator_items(i32* %95, i64 %96, i8** %97, i64 %98, i8** %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @git_iterator_free(i32* %101)
  %103 = bitcast [5 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %103, i8 0, i64 40, i1 false)
  %104 = bitcast i8* %103 to [5 x i8*]*
  %105 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8** %105, align 16
  %106 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8** %106, align 8
  %107 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8** %107, align 16
  %108 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8** %108, align 8
  %109 = getelementptr inbounds [5 x i8*], [5 x i8*]* %104, i32 0, i32 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i8** %109, align 16
  store i64 5, i64* %12, align 8
  %110 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %111 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0))
  %112 = call i32 @cl_git_pass(i32 %111)
  %113 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %114 = call i32 @cl_git_pass(i32 %113)
  %115 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  %116 = call i32 @cl_git_pass(i32 %115)
  %117 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0))
  %118 = call i32 @cl_git_pass(i32 %117)
  %119 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  %120 = call i32 @cl_git_pass(i32 %119)
  %121 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0))
  %122 = call i32 @cl_git_pass(i32 %121)
  %123 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0))
  %124 = call i32 @cl_git_pass(i32 %123)
  %125 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0))
  %126 = call i32 @cl_git_pass(i32 %125)
  %127 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0))
  %128 = call i32 @cl_git_pass(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8**
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i8** %131, i8*** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %138, i8** %139, align 8
  %140 = load i32, i32* @g_repo, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @git_iterator_for_index(i32** %1, i32 %140, i32* %141, %struct.TYPE_12__* %2)
  %143 = call i32 @cl_git_pass(i32 %142)
  %144 = load i32*, i32** %1, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %147 = load i64, i64* %12, align 8
  %148 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %149 = call i32 @expect_iterator_items(i32* %144, i64 %145, i8** %146, i64 %147, i8** %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @git_iterator_free(i32* %150)
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @git_index_free(i32* %152)
  %154 = call i32 @git_vector_free(%struct.TYPE_11__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @create_paths(i32*, i32*, i32) #2

declare dso_local i32 @git_vector_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
