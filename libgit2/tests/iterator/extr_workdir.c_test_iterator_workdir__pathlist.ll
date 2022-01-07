; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__pathlist.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__pathlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"k.a\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"k.b\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"k/1\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"k/a\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"kZZZZZZZ\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"L/1\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@__const.test_iterator_workdir__pathlist.expected = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i8* null, align 8
@__const.test_iterator_workdir__pathlist.expected.12 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)], align 16
@GIT_ITERATOR_IGNORE_CASE = common dso_local global i8* null, align 8
@__const.test_iterator_workdir__pathlist.expected.13 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16
@__const.test_iterator_workdir__pathlist.expected.14 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1
@__const.test_iterator_workdir__pathlist.expected.16 = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@__const.test_iterator_workdir__pathlist.expected.18 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__pathlist() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca [8 x i8*], align 16
  %5 = alloca i64, align 8
  %6 = alloca [8 x i8*], align 16
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8*], align 16
  %9 = alloca i64, align 8
  %10 = alloca [6 x i8*], align 16
  %11 = alloca i64, align 8
  %12 = alloca [6 x i8*], align 16
  %13 = alloca i64, align 8
  %14 = alloca [5 x i8*], align 16
  %15 = alloca i64, align 8
  %16 = alloca [3 x i8*], align 16
  %17 = alloca i64, align 8
  %18 = alloca [1 x i8*], align 8
  %19 = alloca i64, align 8
  %20 = alloca [5 x i8*], align 16
  %21 = alloca i64, align 8
  %22 = alloca [2 x i8*], align 16
  %23 = alloca i64, align 8
  %24 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 40, i1 false)
  %25 = call i32 @git_vector_init(%struct.TYPE_10__* %3, i32 100, i32* null)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i32 %49, i32* @g_repo, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8**
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i8** %52, i8*** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = bitcast [8 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 16 bitcast ([8 x i8*]* @__const.test_iterator_workdir__pathlist.expected to i8*), i64 64, i1 false)
  store i64 8, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* null, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* null, i8** %61, align 8
  %62 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* @g_repo, align 4
  %65 = call i32 @git_iterator_for_workdir(i32** %1, i32 %64, i32* null, i32* null, %struct.TYPE_11__* %2)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds [8 x i8*], [8 x i8*]* %4, i64 0, i64 0
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds [8 x i8*], [8 x i8*]* %4, i64 0, i64 0
  %72 = call i32 @expect_iterator_items(i32* %67, i64 %68, i8** %69, i64 %70, i8** %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @git_iterator_free(i32* %73)
  %75 = bitcast [8 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %75, i8* align 16 bitcast ([8 x i8*]* @__const.test_iterator_workdir__pathlist.expected.12 to i8*), i64 64, i1 false)
  store i64 8, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* null, i8** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* null, i8** %77, align 8
  %78 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* @g_repo, align 4
  %81 = call i32 @git_iterator_for_workdir(i32** %1, i32 %80, i32* null, i32* null, %struct.TYPE_11__* %2)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds [8 x i8*], [8 x i8*]* %6, i64 0, i64 0
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds [8 x i8*], [8 x i8*]* %6, i64 0, i64 0
  %88 = call i32 @expect_iterator_items(i32* %83, i64 %84, i8** %85, i64 %86, i8** %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @git_iterator_free(i32* %89)
  %91 = bitcast [4 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %91, i8* align 16 bitcast ([4 x i8*]* @__const.test_iterator_workdir__pathlist.expected.13 to i8*), i64 32, i1 false)
  store i64 4, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* null, i8** %93, align 8
  %94 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* @g_repo, align 4
  %97 = call i32 @git_iterator_for_workdir(i32** %1, i32 %96, i32* null, i32* null, %struct.TYPE_11__* %2)
  %98 = call i32 @cl_git_pass(i32 %97)
  %99 = load i32*, i32** %1, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %104 = call i32 @expect_iterator_items(i32* %99, i64 %100, i8** %101, i64 %102, i8** %103)
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @git_iterator_free(i32* %105)
  %107 = bitcast [6 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %107, i8 0, i64 48, i1 false)
  %108 = bitcast i8* %107 to [6 x i8*]*
  %109 = getelementptr inbounds [6 x i8*], [6 x i8*]* %108, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %109, align 16
  %110 = getelementptr inbounds [6 x i8*], [6 x i8*]* %108, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %110, align 8
  %111 = getelementptr inbounds [6 x i8*], [6 x i8*]* %108, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %111, align 16
  %112 = getelementptr inbounds [6 x i8*], [6 x i8*]* %108, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %112, align 8
  %113 = getelementptr inbounds [6 x i8*], [6 x i8*]* %108, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8** %113, align 16
  %114 = getelementptr inbounds [6 x i8*], [6 x i8*]* %108, i32 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8** %114, align 8
  store i64 6, i64* %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* null, i8** %116, align 8
  %117 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %117, i8** %118, align 8
  %119 = load i32, i32* @g_repo, align 4
  %120 = call i32 @git_iterator_for_workdir(i32** %1, i32 %119, i32* null, i32* null, %struct.TYPE_11__* %2)
  %121 = call i32 @cl_git_pass(i32 %120)
  %122 = load i32*, i32** %1, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 0
  %125 = load i64, i64* %11, align 8
  %126 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 0
  %127 = call i32 @expect_iterator_items(i32* %122, i64 %123, i8** %124, i64 %125, i8** %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i32 @git_iterator_free(i32* %128)
  %130 = bitcast [6 x i8*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %130, i8 0, i64 48, i1 false)
  %131 = bitcast i8* %130 to [6 x i8*]*
  %132 = getelementptr inbounds [6 x i8*], [6 x i8*]* %131, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %132, align 16
  %133 = getelementptr inbounds [6 x i8*], [6 x i8*]* %131, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %133, align 8
  %134 = getelementptr inbounds [6 x i8*], [6 x i8*]* %131, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8** %134, align 16
  %135 = getelementptr inbounds [6 x i8*], [6 x i8*]* %131, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %135, align 8
  %136 = getelementptr inbounds [6 x i8*], [6 x i8*]* %131, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %136, align 16
  %137 = getelementptr inbounds [6 x i8*], [6 x i8*]* %131, i32 0, i32 5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %137, align 8
  store i64 6, i64* %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* null, i8** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %139, align 8
  %140 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %140, i8** %141, align 8
  %142 = load i32, i32* @g_repo, align 4
  %143 = call i32 @git_iterator_for_workdir(i32** %1, i32 %142, i32* null, i32* null, %struct.TYPE_11__* %2)
  %144 = call i32 @cl_git_pass(i32 %143)
  %145 = load i32*, i32** %1, align 8
  %146 = load i64, i64* %13, align 8
  %147 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %148 = load i64, i64* %13, align 8
  %149 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %150 = call i32 @expect_iterator_items(i32* %145, i64 %146, i8** %147, i64 %148, i8** %149)
  %151 = load i32*, i32** %1, align 8
  %152 = call i32 @git_iterator_free(i32* %151)
  %153 = bitcast [5 x i8*]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %153, i8 0, i64 40, i1 false)
  %154 = bitcast i8* %153 to [5 x i8*]*
  %155 = getelementptr inbounds [5 x i8*], [5 x i8*]* %154, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %155, align 16
  %156 = getelementptr inbounds [5 x i8*], [5 x i8*]* %154, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %156, align 8
  %157 = getelementptr inbounds [5 x i8*], [5 x i8*]* %154, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %157, align 16
  %158 = getelementptr inbounds [5 x i8*], [5 x i8*]* %154, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %158, align 8
  %159 = getelementptr inbounds [5 x i8*], [5 x i8*]* %154, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %159, align 16
  store i64 5, i64* %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* null, i8** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %161, align 8
  %162 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %162, i8** %163, align 8
  %164 = load i32, i32* @g_repo, align 4
  %165 = call i32 @git_iterator_for_workdir(i32** %1, i32 %164, i32* null, i32* null, %struct.TYPE_11__* %2)
  %166 = call i32 @cl_git_pass(i32 %165)
  %167 = load i32*, i32** %1, align 8
  %168 = load i64, i64* %15, align 8
  %169 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  %170 = load i64, i64* %15, align 8
  %171 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  %172 = call i32 @expect_iterator_items(i32* %167, i64 %168, i8** %169, i64 %170, i8** %171)
  %173 = load i32*, i32** %1, align 8
  %174 = call i32 @git_iterator_free(i32* %173)
  %175 = bitcast [3 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %175, i8* align 16 bitcast ([3 x i8*]* @__const.test_iterator_workdir__pathlist.expected.14 to i8*), i64 24, i1 false)
  store i64 3, i64* %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %177, align 8
  %178 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %178, i8** %179, align 8
  %180 = load i32, i32* @g_repo, align 4
  %181 = call i32 @git_iterator_for_workdir(i32** %1, i32 %180, i32* null, i32* null, %struct.TYPE_11__* %2)
  %182 = call i32 @cl_git_pass(i32 %181)
  %183 = load i32*, i32** %1, align 8
  %184 = load i64, i64* %17, align 8
  %185 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 0
  %186 = load i64, i64* %17, align 8
  %187 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 0
  %188 = call i32 @expect_iterator_items(i32* %183, i64 %184, i8** %185, i64 %186, i8** %187)
  %189 = load i32*, i32** %1, align 8
  %190 = call i32 @git_iterator_free(i32* %189)
  %191 = bitcast [1 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 8 bitcast ([1 x i8*]* @__const.test_iterator_workdir__pathlist.expected.16 to i8*), i64 8, i1 false)
  store i64 1, i64* %19, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %192, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %193, align 8
  %194 = load i8*, i8** @GIT_ITERATOR_DONT_IGNORE_CASE, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %194, i8** %195, align 8
  %196 = load i32, i32* @g_repo, align 4
  %197 = call i32 @git_iterator_for_workdir(i32** %1, i32 %196, i32* null, i32* null, %struct.TYPE_11__* %2)
  %198 = call i32 @cl_git_pass(i32 %197)
  %199 = load i32*, i32** %1, align 8
  %200 = load i64, i64* %19, align 8
  %201 = getelementptr inbounds [1 x i8*], [1 x i8*]* %18, i64 0, i64 0
  %202 = load i64, i64* %19, align 8
  %203 = getelementptr inbounds [1 x i8*], [1 x i8*]* %18, i64 0, i64 0
  %204 = call i32 @expect_iterator_items(i32* %199, i64 %200, i8** %201, i64 %202, i8** %203)
  %205 = load i32*, i32** %1, align 8
  %206 = call i32 @git_iterator_free(i32* %205)
  %207 = bitcast [5 x i8*]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %207, i8 0, i64 40, i1 false)
  %208 = bitcast i8* %207 to [5 x i8*]*
  %209 = getelementptr inbounds [5 x i8*], [5 x i8*]* %208, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %209, align 16
  %210 = getelementptr inbounds [5 x i8*], [5 x i8*]* %208, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %210, align 8
  %211 = getelementptr inbounds [5 x i8*], [5 x i8*]* %208, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %211, align 16
  %212 = getelementptr inbounds [5 x i8*], [5 x i8*]* %208, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %212, align 8
  %213 = getelementptr inbounds [5 x i8*], [5 x i8*]* %208, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8** %213, align 16
  store i64 5, i64* %21, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %214, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %215, align 8
  %216 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %216, i8** %217, align 8
  %218 = load i32, i32* @g_repo, align 4
  %219 = call i32 @git_iterator_for_workdir(i32** %1, i32 %218, i32* null, i32* null, %struct.TYPE_11__* %2)
  %220 = call i32 @cl_git_pass(i32 %219)
  %221 = load i32*, i32** %1, align 8
  %222 = load i64, i64* %21, align 8
  %223 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  %224 = load i64, i64* %21, align 8
  %225 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  %226 = call i32 @expect_iterator_items(i32* %221, i64 %222, i8** %223, i64 %224, i8** %225)
  %227 = load i32*, i32** %1, align 8
  %228 = call i32 @git_iterator_free(i32* %227)
  %229 = bitcast [2 x i8*]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %229, i8* align 16 bitcast ([2 x i8*]* @__const.test_iterator_workdir__pathlist.expected.18 to i8*), i64 16, i1 false)
  store i64 2, i64* %23, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %230, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %231, align 8
  %232 = load i8*, i8** @GIT_ITERATOR_IGNORE_CASE, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i8* %232, i8** %233, align 8
  %234 = load i32, i32* @g_repo, align 4
  %235 = call i32 @git_iterator_for_workdir(i32** %1, i32 %234, i32* null, i32* null, %struct.TYPE_11__* %2)
  %236 = call i32 @cl_git_pass(i32 %235)
  %237 = load i32*, i32** %1, align 8
  %238 = load i64, i64* %23, align 8
  %239 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %240 = load i64, i64* %23, align 8
  %241 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %242 = call i32 @expect_iterator_items(i32* %237, i64 %238, i8** %239, i64 %240, i8** %241)
  %243 = load i32*, i32** %1, align 8
  %244 = call i32 @git_iterator_free(i32* %243)
  %245 = call i32 @git_vector_free(%struct.TYPE_10__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_10__*, i32, i32*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_vector_free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
