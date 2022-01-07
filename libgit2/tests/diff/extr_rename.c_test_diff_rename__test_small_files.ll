; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__test_small_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__test_small_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"renames/small.txt\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Hello World!\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"small.txt\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Rename\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"rename@example.com\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Test commit\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"renames/copy.txt\00", align 1
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_FOR_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DELTA_RENAMED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"copy.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__test_small_files() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca %struct.TYPE_14__, align 4
  %12 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.TYPE_14__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i32 @git_repository_index(i32** %1, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_index_add_bypath(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_repository_head(i32** %2, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %26 = call i32 @git_reference_peel(i32** %3, i32* %24, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_commit_tree(i32** %4, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_index_write_tree(i32* %8, i32* %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @g_repo, align 4
  %35 = call i32 @git_tree_lookup(i32** %5, i32 %34, i32* %8)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @git_signature_new(i32** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 1404157834, i32 0)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @git_commit_create(i32* %8, i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %40, i32* %41, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %42, i32 1, i32** %3)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @cl_git_rmfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @g_repo, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @git_diff_tree_to_workdir(i32** %7, i32 %49, i32* %50, %struct.TYPE_13__* %10)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %54 = load i32, i32* @GIT_DIFF_FIND_FOR_UNTRACKED, align 4
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @git_diff_find_similar(i32* %57, %struct.TYPE_14__* %11)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @git_diff_num_deltas(i32* %60)
  %62 = call i32 @cl_assert_equal_i(i32 %61, i32 1)
  %63 = load i32*, i32** %7, align 8
  %64 = call %struct.TYPE_15__* @git_diff_get_delta(i32* %63, i32 0)
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %9, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GIT_DELTA_RENAMED, align 4
  %69 = call i32 @cl_assert_equal_i(i32 %67, i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cl_assert_equal_s(i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cl_assert_equal_s(i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @git_diff_free(i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @git_signature_free(i32* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @git_tree_free(i32* %84)
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @git_tree_free(i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @git_commit_free(i32* %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @git_reference_free(i32* %90)
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @git_index_free(i32* %92)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_index_write_tree(i32*, i32*) #2

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i32, i32) #2

declare dso_local i32 @git_commit_create(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32, i32**) #2

declare dso_local i32 @cl_git_rmfile(i8*) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local %struct.TYPE_15__* @git_diff_get_delta(i32*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_signature_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
