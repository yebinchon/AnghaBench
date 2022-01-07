; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__advance_over_with_pathlist.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__advance_over_with_pathlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8**, i32 }

@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"dirA/subdir1/subdir2/file\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"dirB/subdir1/subdir2\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"dirC/subdir1/nonexistent\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"dirD/subdir1/nonexistent\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"dirD/subdir1/subdir2\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"dirD/nonexistent\00", align 1
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"icase/dirA\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"icase/dirA/subdir1\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"icase/dirA/subdir1/subdir2\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"icase/dirA/subdir1/subdir2/file\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"foo!\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"icase/dirB\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"icase/dirB/subdir1\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"icase/dirB/subdir1/subdir2\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"icase/dirB/subdir1/subdir2/file\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"icase/dirC\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"icase/dirC/subdir1\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"icase/dirC/subdir1/subdir2\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"icase/dirC/subdir1/subdir2/file\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"icase/dirD\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"icase/dirD/subdir1\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"icase/dirD/subdir1/subdir2\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"icase/dirD/subdir1/subdir2/file\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"dirA/\00", align 1
@GIT_ITERATOR_STATUS_NORMAL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"dirB/\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"dirC/\00", align 1
@GIT_ITERATOR_STATUS_FILTERED = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"dirD/\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__advance_over_with_pathlist() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %5 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %6 = call i32 @git_vector_insert(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @git_vector_insert(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @git_vector_insert(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @git_vector_insert(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @git_vector_insert(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @git_vector_insert(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8**
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8** %14, i8*** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %22 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 8
  %27 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %27, i32* @g_repo, align 4
  %28 = call i32 @p_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 511)
  %29 = call i32 @cl_must_pass(i32 %28)
  %30 = call i32 @p_mkdir(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 511)
  %31 = call i32 @cl_must_pass(i32 %30)
  %32 = call i32 @p_mkdir(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 511)
  %33 = call i32 @cl_must_pass(i32 %32)
  %34 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %35 = call i32 @p_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 511)
  %36 = call i32 @cl_must_pass(i32 %35)
  %37 = call i32 @p_mkdir(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 511)
  %38 = call i32 @cl_must_pass(i32 %37)
  %39 = call i32 @p_mkdir(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 511)
  %40 = call i32 @cl_must_pass(i32 %39)
  %41 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %42 = call i32 @p_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 511)
  %43 = call i32 @cl_must_pass(i32 %42)
  %44 = call i32 @p_mkdir(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 511)
  %45 = call i32 @cl_must_pass(i32 %44)
  %46 = call i32 @p_mkdir(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 511)
  %47 = call i32 @cl_must_pass(i32 %46)
  %48 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %49 = call i32 @p_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 511)
  %50 = call i32 @cl_must_pass(i32 %49)
  %51 = call i32 @p_mkdir(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 511)
  %52 = call i32 @cl_must_pass(i32 %51)
  %53 = call i32 @p_mkdir(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 511)
  %54 = call i32 @cl_must_pass(i32 %53)
  %55 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %56 = load i32, i32* @g_repo, align 4
  %57 = call i32 @git_iterator_for_workdir(i32** %2, i32 %56, i32* null, i32* null, %struct.TYPE_11__* %3)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %61 = call i32 @expect_advance_over(i32* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %64 = call i32 @expect_advance_over(i32* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* @GIT_ITERATOR_STATUS_FILTERED, align 4
  %67 = call i32 @expect_advance_over(i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @GIT_ITERATOR_STATUS_NORMAL, align 4
  %70 = call i32 @expect_advance_over(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @GIT_ITEROVER, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @git_iterator_advance(i32* null, i32* %72)
  %74 = call i32 @cl_git_fail_with(i32 %71, i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @git_iterator_free(i32* %75)
  %77 = call i32 @git_vector_free(%struct.TYPE_10__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_vector_insert(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @expect_advance_over(i32*, i8*, i32) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_iterator_advance(i32*, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
