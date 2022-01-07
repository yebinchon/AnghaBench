; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__pathlist_for_deeply_nested_item.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__pathlist_for_deeply_nested_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8**, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item7\00", align 1
@__const.test_iterator_workdir__pathlist_for_deeply_nested_item.expected = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)], align 8
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item1\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item2\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item3\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item4\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item5\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"item1/item3/item5/item6\00", align 1
@__const.test_iterator_workdir__pathlist_for_deeply_nested_item.expected.9 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)], align 16
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
@__const.test_iterator_workdir__pathlist_for_deeply_nested_item.expected.39 = private unnamed_addr constant [36 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0)], align 16
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
define dso_local void @test_iterator_workdir__pathlist_for_deeply_nested_item() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca %struct.TYPE_16__, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca [1 x i8*], align 8
  %5 = alloca i64, align 8
  %6 = alloca [8 x i8*], align 16
  %7 = alloca i64, align 8
  %8 = alloca [36 x i8*], align 16
  %9 = alloca i64, align 8
  %10 = alloca [5 x i8*], align 16
  %11 = alloca i64, align 8
  %12 = bitcast %struct.TYPE_16__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_16__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %13 = call i32 @git_vector_init(%struct.TYPE_15__* %3, i32 5, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* @g_repo, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_repository_workdir(i32 %16)
  %18 = call i32 @create_paths(i32 %17, i32 3)
  %19 = bitcast [1 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast ([1 x i8*]* @__const.test_iterator_workdir__pathlist_for_deeply_nested_item.expected to i8*), i64 8, i1 false)
  store i64 1, i64* %5, align 8
  %20 = call i32 @git_vector_clear(%struct.TYPE_15__* %3)
  %21 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8**
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i8** %25, i8*** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @g_repo, align 4
  %35 = call i32 @git_iterator_for_workdir(%struct.TYPE_17__** %1, i32 %34, i32* null, i32* null, %struct.TYPE_16__* %2)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %42 = call i32 @expect_iterator_items(%struct.TYPE_17__* %37, i64 %38, i8** %39, i64 %40, i8** %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_i(i32 4, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %48 = call i32 @git_iterator_free(%struct.TYPE_17__* %47)
  %49 = bitcast [8 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 bitcast ([8 x i8*]* @__const.test_iterator_workdir__pathlist_for_deeply_nested_item.expected.9 to i8*), i64 64, i1 false)
  store i64 8, i64* %7, align 8
  %50 = call i32 @git_vector_clear(%struct.TYPE_15__* %3)
  %51 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8**
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i8** %55, i8*** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* @g_repo, align 4
  %65 = call i32 @git_iterator_for_workdir(%struct.TYPE_17__** %1, i32 %64, i32* null, i32* null, %struct.TYPE_16__* %2)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds [8 x i8*], [8 x i8*]* %6, i64 0, i64 0
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds [8 x i8*], [8 x i8*]* %6, i64 0, i64 0
  %72 = call i32 @expect_iterator_items(%struct.TYPE_17__* %67, i64 %68, i8** %69, i64 %70, i8** %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cl_assert_equal_i(i32 11, i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %78 = call i32 @git_iterator_free(%struct.TYPE_17__* %77)
  %79 = bitcast [36 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %79, i8* align 16 bitcast ([36 x i8*]* @__const.test_iterator_workdir__pathlist_for_deeply_nested_item.expected.39 to i8*), i64 288, i1 false)
  store i64 36, i64* %9, align 8
  %80 = call i32 @git_vector_clear(%struct.TYPE_15__* %3)
  %81 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0))
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8**
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  store i8** %85, i8*** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @g_repo, align 4
  %95 = call i32 @git_iterator_for_workdir(%struct.TYPE_17__** %1, i32 %94, i32* null, i32* null, %struct.TYPE_16__* %2)
  %96 = call i32 @cl_git_pass(i32 %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds [36 x i8*], [36 x i8*]* %8, i64 0, i64 0
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds [36 x i8*], [36 x i8*]* %8, i64 0, i64 0
  %102 = call i32 @expect_iterator_items(%struct.TYPE_17__* %97, i64 %98, i8** %99, i64 %100, i8** %101)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cl_assert_equal_i(i32 42, i32 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %108 = call i32 @git_iterator_free(%struct.TYPE_17__* %107)
  %109 = bitcast [5 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %109, i8 0, i64 40, i1 false)
  %110 = bitcast i8* %109 to [5 x i8*]*
  %111 = getelementptr inbounds [5 x i8*], [5 x i8*]* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8** %111, align 16
  %112 = getelementptr inbounds [5 x i8*], [5 x i8*]* %110, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8** %112, align 8
  %113 = getelementptr inbounds [5 x i8*], [5 x i8*]* %110, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8** %113, align 16
  %114 = getelementptr inbounds [5 x i8*], [5 x i8*]* %110, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8** %114, align 8
  %115 = getelementptr inbounds [5 x i8*], [5 x i8*]* %110, i32 0, i32 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i8** %115, align 16
  store i64 5, i64* %11, align 8
  %116 = call i32 @git_vector_clear(%struct.TYPE_15__* %3)
  %117 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0))
  %118 = call i32 @cl_git_pass(i32 %117)
  %119 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %120 = call i32 @cl_git_pass(i32 %119)
  %121 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  %122 = call i32 @cl_git_pass(i32 %121)
  %123 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0))
  %124 = call i32 @cl_git_pass(i32 %123)
  %125 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  %126 = call i32 @cl_git_pass(i32 %125)
  %127 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0))
  %128 = call i32 @cl_git_pass(i32 %127)
  %129 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0))
  %130 = call i32 @cl_git_pass(i32 %129)
  %131 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0))
  %132 = call i32 @cl_git_pass(i32 %131)
  %133 = call i32 @git_vector_insert(%struct.TYPE_15__* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0))
  %134 = call i32 @cl_git_pass(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8**
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i8** %137, i8*** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* %144, i8** %145, align 8
  %146 = load i32, i32* @g_repo, align 4
  %147 = call i32 @git_iterator_for_workdir(%struct.TYPE_17__** %1, i32 %146, i32* null, i32* null, %struct.TYPE_16__* %2)
  %148 = call i32 @cl_git_pass(i32 %147)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %150 = load i64, i64* %11, align 8
  %151 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %154 = call i32 @expect_iterator_items(%struct.TYPE_17__* %149, i64 %150, i8** %151, i64 %152, i8** %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @cl_assert_equal_i(i32 14, i32 %157)
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %160 = call i32 @git_iterator_free(%struct.TYPE_17__* %159)
  %161 = call i32 @git_vector_free(%struct.TYPE_15__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_15__*, i32, i32*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @create_paths(i32, i32) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_vector_clear(%struct.TYPE_15__*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @git_iterator_for_workdir(%struct.TYPE_17__**, i32, i32*, i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @expect_iterator_items(%struct.TYPE_17__*, i64, i8**, i64, i8**) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_iterator_free(%struct.TYPE_17__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_vector_free(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
