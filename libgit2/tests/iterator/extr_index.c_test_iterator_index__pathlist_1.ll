; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_index.c_test_iterator_index__pathlist_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@git__strcmp_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"k/1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"k/a\00", align 1
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"k/D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_index__pathlist_1() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 32, i1 false)
  %8 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %9 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* @g_repo, align 4
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_repository_index(i32** %3, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_vector_init(%struct.TYPE_11__* %4, i32 100, i32* @git__strcmp_cb)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_vector_insert(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_index_caps(i32* %27)
  %29 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8**
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i8** %35, i8*** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 5, i32 3
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @g_repo, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @git_iterator_for_index(i32** %1, i32 %48, i32* %49, %struct.TYPE_12__* %2)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @expect_iterator_items(i32* %52, i32 %53, i32* null, i32 %54, i32* null)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @git_iterator_free(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @git_index_free(i32* %58)
  %60 = call i32 @git_vector_free(%struct.TYPE_11__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_index_caps(i32*) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i32, i32*, i32, i32*) #2

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
