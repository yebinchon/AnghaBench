; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_pathlist.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_pathlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"foobar/asdf\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"subdir/asdf\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ignored/asdf\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"status/.gitignore\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c".gitignore\0Aignored/\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"status/foobar\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"status/foobar/one\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"one\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"status/ignored\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"status/ignored/one\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"status/ignored/two\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"two\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"status/ignored/three\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"three\0A\00", align 1
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_index_pathlist() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 24, i1 false)
  %6 = bitcast %struct.TYPE_10__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %7 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @git_vector_insert(%struct.TYPE_10__* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %10, i32* @g_repo, align 4
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @p_mkdir(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 511)
  %13 = call i32 @cl_must_pass(i32 %12)
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %15 = call i32 @p_mkdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 511)
  %16 = call i32 @cl_must_pass(i32 %15)
  %17 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %19 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_repository_index(i32** %1, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8**
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i8** %27, i8*** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @g_repo, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %34, i32* %35, %struct.TYPE_11__* %3)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_diff_num_deltas(i32* %38)
  %40 = call i32 @cl_assert_equal_i(i32 0, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @git_diff_free(i32* %41)
  %43 = load i32, i32* @GIT_DIFF_DISABLE_PATHSPEC_MATCH, align 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %47, i32* %48, %struct.TYPE_11__* %3)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @git_diff_num_deltas(i32* %51)
  %53 = call i32 @cl_assert_equal_i(i32 0, i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @git_diff_free(i32* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @git_index_free(i32* %56)
  %58 = call i32 @git_vector_free(%struct.TYPE_10__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_vector_insert(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
