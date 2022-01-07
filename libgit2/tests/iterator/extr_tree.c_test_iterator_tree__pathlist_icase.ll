; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_tree.c_test_iterator_tree__pathlist_icase.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_tree.c_test_iterator_tree__pathlist_icase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@git__strcmp_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"k.a\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"k.b\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"k/1\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"k/a\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"kZZZZ\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"L/1\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"k/Z\00", align 1
@GIT_ITERATOR_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_tree__pathlist_icase() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 40, i1 false)
  %6 = call i32 @git_vector_init(%struct.TYPE_10__* %3, i32 100, i32* @git__strcmp_cb)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i32 %30, i32* @g_repo, align 4
  %31 = load i32, i32* @g_repo, align 4
  %32 = call i32 @git_repository_head_tree(i32** %4, i32 %31)
  %33 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8**
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i8** %37, i8*** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_iterator_for_tree(i32** %1, i32* %46, %struct.TYPE_11__* %2)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @expect_iterator_items(i32* %49, i32 3, i32* null, i32 3, i32* null)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_iterator_free(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @git_iterator_for_tree(i32** %1, i32* %55, %struct.TYPE_11__* %2)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @expect_iterator_items(i32* %58, i32 1, i32* null, i32 1, i32* null)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @git_iterator_free(i32* %60)
  %62 = load i32, i32* @GIT_ITERATOR_IGNORE_CASE, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %65, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @git_iterator_for_tree(i32** %1, i32* %66, %struct.TYPE_11__* %2)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @expect_iterator_items(i32* %69, i32 5, i32* null, i32 5, i32* null)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @git_iterator_free(i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %74, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @git_iterator_for_tree(i32** %1, i32* %75, %struct.TYPE_11__* %2)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @expect_iterator_items(i32* %78, i32 2, i32* null, i32 2, i32* null)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_iterator_free(i32* %80)
  %82 = call i32 @git_vector_free(%struct.TYPE_10__* %3)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @git_tree_free(i32* %83)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_10__*, i32, i32*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_repository_head_tree(i32**, i32) #2

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_10__*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
