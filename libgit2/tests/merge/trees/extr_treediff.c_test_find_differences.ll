; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_treediff.c_test_find_differences.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_treediff.c_test_find_differences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i8*, i32, i32, i32, i32 }
%struct.merge_index_conflict_data = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@repo = common dso_local global i32 0, align 4
@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@GIT_MERGE_OPTIONS_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GIT_MERGE_FIND_RENAMES = common dso_local global i32 0, align 4
@git_diff_find_similar__hashsig_for_file = common dso_local global i32 0, align 4
@git_diff_find_similar__hashsig_for_buf = common dso_local global i32 0, align 4
@git_diff_find_similar__hashsig_free = common dso_local global i32 0, align 4
@git_diff_find_similar__calc_similarity = common dso_local global i32 0, align 4
@GIT_HASHSIG_SMART_WHITESPACE = common dso_local global i64 0, align 8
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, %struct.merge_index_conflict_data*, i64)* @test_find_differences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_find_differences(i8* %0, i8* %1, i8* %2, %struct.merge_index_conflict_data* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.merge_index_conflict_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_18__, align 4
  %22 = alloca %struct.TYPE_16__, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.merge_index_conflict_data* %3, %struct.merge_index_conflict_data** %9, align 8
  store i64 %4, i64* %10, align 8
  %23 = load i32, i32* @repo, align 4
  %24 = call %struct.TYPE_17__* @git_merge_diff_list__alloc(i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %11, align 8
  %25 = bitcast %struct.TYPE_18__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.TYPE_18__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %26 = bitcast %struct.TYPE_16__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_16__* @GIT_MERGE_OPTIONS_INIT to i8*), i64 24, i1 false)
  %27 = load i32, i32* @GIT_MERGE_FIND_RENAMES, align 4
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i32 1000, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  store i32 50, i32* %32, align 4
  %33 = call %struct.TYPE_15__* @git__malloc(i32 4)
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = load i32, i32* @git_diff_find_similar__hashsig_for_file, align 4
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @git_diff_find_similar__hashsig_for_buf, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @git_diff_find_similar__hashsig_free, align 4
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @git_diff_find_similar__calc_similarity, align 4
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load i64, i64* @GIT_HASHSIG_SMART_WHITESPACE, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @git_oid_fromstr(i32* %12, i8* %61)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @git_oid_fromstr(i32* %13, i8* %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @git_oid_fromstr(i32* %14, i8* %67)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load i32, i32* @repo, align 4
  %71 = call i32 @git_tree_lookup(i32** %15, i32 %70, i32* %12)
  %72 = call i32 @cl_git_pass(i32 %71)
  %73 = load i32, i32* @repo, align 4
  %74 = call i32 @git_tree_lookup(i32** %16, i32 %73, i32* %13)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32, i32* @repo, align 4
  %77 = call i32 @git_tree_lookup(i32** %17, i32 %76, i32* %14)
  %78 = call i32 @cl_git_pass(i32 %77)
  %79 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @git_iterator_for_tree(i32** %18, i32* %81, %struct.TYPE_18__* %21)
  %83 = call i32 @cl_git_pass(i32 %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @git_iterator_for_tree(i32** %19, i32* %84, %struct.TYPE_18__* %21)
  %86 = call i32 @cl_git_pass(i32 %85)
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @git_iterator_for_tree(i32** %20, i32* %87, %struct.TYPE_18__* %21)
  %89 = call i32 @cl_git_pass(i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = load i32*, i32** %18, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = call i32 @git_merge_diff_list__find_differences(%struct.TYPE_17__* %90, i32* %91, i32* %92, i32* %93)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = load i32, i32* @repo, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = call i32 @git_merge_diff_list__find_renames(i32 %96, %struct.TYPE_17__* %97, %struct.TYPE_16__* %22)
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %100, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @cl_assert(i32 %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load %struct.merge_index_conflict_data*, %struct.merge_index_conflict_data** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @merge_test_merge_conflicts(%struct.TYPE_19__* %109, %struct.merge_index_conflict_data* %110, i64 %111)
  %113 = call i32 @cl_assert(i32 %112)
  %114 = load i32*, i32** %18, align 8
  %115 = call i32 @git_iterator_free(i32* %114)
  %116 = load i32*, i32** %19, align 8
  %117 = call i32 @git_iterator_free(i32* %116)
  %118 = load i32*, i32** %20, align 8
  %119 = call i32 @git_iterator_free(i32* %118)
  %120 = load i32*, i32** %15, align 8
  %121 = call i32 @git_tree_free(i32* %120)
  %122 = load i32*, i32** %16, align 8
  %123 = call i32 @git_tree_free(i32* %122)
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @git_tree_free(i32* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %127 = call i32 @git_merge_diff_list__free(%struct.TYPE_17__* %126)
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = call i32 @git__free(%struct.TYPE_15__* %129)
  ret void
}

declare dso_local %struct.TYPE_17__* @git_merge_diff_list__alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_15__* @git__malloc(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @git_merge_diff_list__find_differences(%struct.TYPE_17__*, i32*, i32*, i32*) #1

declare dso_local i32 @git_merge_diff_list__find_renames(i32, %struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @merge_test_merge_conflicts(%struct.TYPE_19__*, %struct.merge_index_conflict_data*, i64) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_merge_diff_list__free(%struct.TYPE_17__*) #1

declare dso_local i32 @git__free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
