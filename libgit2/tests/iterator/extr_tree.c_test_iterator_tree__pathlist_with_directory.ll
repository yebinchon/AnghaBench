; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_tree.c_test_iterator_tree__pathlist_with_directory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_tree.c_test_iterator_tree__pathlist_with_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"subdir/README\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"subdir/new.txt\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"subdir/subdir2/README\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"subdir/subdir2/new.txt\00", align 1
@__const.test_iterator_tree__pathlist_with_directory.expected = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)], align 16
@__const.test_iterator_tree__pathlist_with_directory.expected2 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [10 x i8] c"testrepo2\00", align 1
@g_repo = common dso_local global i32 0, align 4
@git__strcmp_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"subdir/\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"subdir/subdir2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_tree__pathlist_with_directory() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i64, align 8
  %9 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %10 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i8*]* @__const.test_iterator_tree__pathlist_with_directory.expected to i8*), i64 32, i1 false)
  store i64 4, i64* %6, align 8
  %11 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x i8*]* @__const.test_iterator_tree__pathlist_with_directory.expected2 to i8*), i64 16, i1 false)
  store i64 2, i64* %8, align 8
  %12 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %12, i32* @g_repo, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_repository_head_tree(i32** %4, i32 %13)
  %15 = call i32 @git_vector_init(%struct.TYPE_11__* %3, i32 100, i32* @git__strcmp_cb)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8**
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i8** %21, i8*** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_iterator_for_tree(i32** %1, i32* %32, %struct.TYPE_12__* %2)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %40 = call i32 @expect_iterator_items(i32* %35, i64 %36, i8** %37, i64 %38, i8** %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_iterator_free(i32* %41)
  %43 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %44 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8**
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i8** %48, i8*** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @git_iterator_for_tree(i32** %1, i32* %55, %struct.TYPE_12__* %2)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %63 = call i32 @expect_iterator_items(i32* %58, i64 %59, i8** %60, i64 %61, i8** %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_iterator_free(i32* %64)
  %66 = call i32 @git_vector_clear(%struct.TYPE_11__* %3)
  %67 = call i32 @git_vector_insert(%struct.TYPE_11__* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8**
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i8** %71, i8*** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @git_iterator_for_tree(i32** %1, i32* %78, %struct.TYPE_12__* %2)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %86 = call i32 @expect_iterator_items(i32* %81, i64 %82, i8** %83, i64 %84, i8** %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i32 @git_iterator_free(i32* %87)
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @git_tree_free(i32* %89)
  %91 = call i32 @git_vector_free(%struct.TYPE_11__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_repository_head_tree(i32**, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_vector_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
