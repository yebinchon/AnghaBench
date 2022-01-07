; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_with_dirs_include_trees.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_with_dirs_include_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"k/\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"k/1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"k/B\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"k/a\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"k/c\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_TREES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__pathlist_with_dirs_include_trees() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca [6 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %8 = bitcast [6 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 48, i1 false)
  %9 = bitcast i8* %8 to [6 x i8*]*
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %11, align 8
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %13, align 8
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %15, align 8
  store i64 6, i64* %6, align 8
  %16 = call i32 @git_vector_init(%struct.TYPE_11__* %4, i32 5, i32* null)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %18, i32* @g_repo, align 4
  %19 = load i32, i32* @g_repo, align 4
  %20 = call i32 @git_repository_index(i32** %3, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_vector_clear(%struct.TYPE_11__* %4)
  %23 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8**
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i8** %27, i8*** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %35 = load i32, i32* @GIT_ITERATOR_INCLUDE_TREES, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @git_iterator_for_index(i32** %1, i32 %38, i32* %39, %struct.TYPE_12__* %2)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  %47 = call i32 @expect_iterator_items(i32* %42, i64 %43, i8** %44, i64 %45, i8** %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_iterator_free(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_index_free(i32* %50)
  %52 = call i32 @git_vector_free(%struct.TYPE_11__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_vector_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
