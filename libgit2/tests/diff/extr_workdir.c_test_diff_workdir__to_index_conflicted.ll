; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_conflicted.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_conflicted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"26a125ee1bf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"_file\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"d427e0b2e138501a3d15cc376077a3631e15bd46\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"2bd0a343aeef7a2cf0d158478966a6e587ff3863\00", align 1
@GIT_DELTA_CONFLICTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_index_conflicted() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %10 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* @g_repo, align 4
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i8*, i8** %1, align 8
  %16 = call i32* @resolve_commit_oid_to_tree(i32 %14, i8* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_repository_index(i32** %6, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 33188, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store i32 33188, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i32 33188, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %27 = call i32 @git_oid_fromstr(i32* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %29 = call i32 @git_oid_fromstr(i32* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %31 = call i32 @git_oid_fromstr(i32* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @git_index_conflict_add(i32* %32, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @g_repo, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @git_diff_tree_to_index(i32** %7, i32 %35, i32* %36, i32* %37, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32, i32* @g_repo, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @git_diff_index_to_workdir(i32** %8, i32 %40, i32* %41, i32* null)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @git_diff_merge(i32* %44, i32* %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @git_diff_num_deltas(i32* %48)
  %50 = call i32 @cl_assert_equal_i(i32 %49, i32 12)
  %51 = load i32*, i32** %7, align 8
  %52 = call %struct.TYPE_12__* @git_diff_get_delta(i32* %51, i32 0)
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %9, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_s(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cl_assert_equal_i(i32 %60, i32 1)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GIT_DELTA_CONFLICTED, align 4
  %66 = call i32 @cl_assert_equal_i(i32 %64, i32 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @git_diff_free(i32* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @git_diff_free(i32* %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @git_index_free(i32* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @git_tree_free(i32* %73)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_index_conflict_add(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #2

declare dso_local i32 @git_diff_merge(i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local %struct.TYPE_12__* @git_diff_get_delta(i32*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
