; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__pathlist_with_directory_include_trees.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__pathlist_with_directory_include_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"subdir/\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"subdir/README\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"subdir/new.txt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"subdir/subdir2/\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"subdir/subdir2/README\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"subdir/subdir2/new.txt\00", align 1
@git__strcmp_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"testrepo2\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_TREES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__pathlist_with_directory_include_trees() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca [6 x i8*], align 16
  %5 = alloca i64, align 8
  %6 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %7 = bitcast [6 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 48, i1 false)
  %8 = bitcast i8* %7 to [6 x i8*]*
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 5
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8** %14, align 8
  store i64 6, i64* %5, align 8
  %15 = call i32 @git_vector_init(%struct.TYPE_10__* %3, i32 100, i32* @git__strcmp_cb)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_vector_insert(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %19, i32* @g_repo, align 4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8**
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i8** %22, i8*** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %30 = load i32, i32* @GIT_ITERATOR_INCLUDE_TREES, align 4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @g_repo, align 4
  %36 = call i32 @git_iterator_for_workdir(i32** %1, i32 %35, i32* null, i32* null, %struct.TYPE_11__* %2)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %43 = call i32 @expect_iterator_items(i32* %38, i64 %39, i8** %40, i64 %41, i8** %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @git_iterator_free(i32* %44)
  %46 = call i32 @git_vector_free(%struct.TYPE_10__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_10__*, i32, i32*) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i64, i8**, i64, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
