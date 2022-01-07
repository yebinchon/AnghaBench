; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__identical.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__identical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@INITIAL_COMMIT = common dso_local global i8* null, align 8
@COPY_RENAME_COMMIT = common dso_local global i8* null, align 8
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [233 x i8] c"diff --git a/serving.txt b/sixserving.txt\0Asimilarity index 100%\0Arename from serving.txt\0Arename to sixserving.txt\0Adiff --git a/sevencities.txt b/songofseven.txt\0Asimilarity index 100%\0Acopy from sevencities.txt\0Acopy to songofseven.txt\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_EXACT_MATCH_ONLY = common dso_local global i32 0, align 4
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__identical() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i8*, align 8
  %10 = load i8*, i8** @INITIAL_COMMIT, align 8
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** @COPY_RENAME_COMMIT, align 8
  store i8* %11, i8** %2, align 8
  %12 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i8*, i8** %1, align 8
  %17 = call i32* @resolve_commit_oid_to_tree(i32 %15, i8* %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32* @resolve_commit_oid_to_tree(i32 %18, i8* %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED, align 4
  %26 = load i32, i32* @GIT_DIFF_FIND_EXACT_MATCH_ONLY, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @git_diff_tree_to_tree(i32** %5, i32 %29, i32* %30, i32* %31, %struct.TYPE_11__* %6)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @git_diff_find_similar(i32* %34, %struct.TYPE_12__* %7)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %39 = call i32 @git_diff_to_buf(%struct.TYPE_13__* %8, i32* %37, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_assert_equal_s(i8* %41, i32 %43)
  %45 = call i32 @git_buf_dispose(%struct.TYPE_13__* %8)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @git_diff_free(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_tree_free(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @git_tree_free(i32* %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_diff_to_buf(%struct.TYPE_13__*, i32*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
