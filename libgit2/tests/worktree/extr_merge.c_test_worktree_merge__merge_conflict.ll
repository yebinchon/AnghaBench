; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_merge.c_test_worktree_merge__merge_conflict.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_merge.c_test_worktree_merge__merge_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@fixture = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CONFLICT_BRANCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"branch_file.txt\00", align 1
@CONFLICT_BRANCH_FILE_TXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_merge__merge_conflict() #0 {
  %1 = alloca %struct.TYPE_11__, align 4
  %2 = alloca %struct.TYPE_11__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i64 0, i64* %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 0), align 8
  %12 = load i32, i32* @CONFLICT_BRANCH, align 4
  %13 = call i32 @git_reference_lookup(i32** %3, %struct.TYPE_12__* %11, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 0), align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_annotated_commit_from_ref(i32** %4, %struct.TYPE_12__* %15, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 0), align 8
  %20 = call i32 @git_merge(%struct.TYPE_12__* %19, i32** %4, i32 1, i32* null, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 0), align 8
  %23 = call i32 @git_repository_index(i32** %5, %struct.TYPE_12__* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %42, %0
  %26 = load i64, i64* %7, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @git_index_entrycount(i32* %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32* @git_index_get_byindex(i32* %31, i64 %32)
  store i32* %33, i32** %6, align 8
  %34 = call i32 @cl_assert(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @git_index_entry_is_conflict(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %25

45:                                               ; preds = %25
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @cl_assert_equal_sz(i64 %46, i32 3)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_reference_free(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @git_annotated_commit_free(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @git_index_free(i32* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @git_buf_joinpath(%struct.TYPE_11__* %1, i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @git_futils_readbuffer(%struct.TYPE_11__* %2, i32 %60)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CONFLICT_BRANCH_FILE_TXT, align 4
  %66 = call i32 @cl_assert_equal_s(i32 %64, i32 %65)
  %67 = call i32 @git_buf_dispose(%struct.TYPE_11__* %1)
  %68 = call i32 @git_buf_dispose(%struct.TYPE_11__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @git_merge(%struct.TYPE_12__*, i32**, i32, i32*, i32*) #2

declare dso_local i32 @git_repository_index(i32**, %struct.TYPE_12__*) #2

declare dso_local i64 @git_index_entrycount(i32*) #2

declare dso_local i32 @cl_assert(i32*) #2

declare dso_local i32* @git_index_get_byindex(i32*, i64) #2

declare dso_local i64 @git_index_entry_is_conflict(i32*) #2

declare dso_local i32 @cl_assert_equal_sz(i64, i32) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
