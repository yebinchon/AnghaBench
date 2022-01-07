; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__rejected_match_can_match_others_three.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__rejected_match_can_match_others_three.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.rename_expected = type { i32, i32*, i8**, i8**, i64, i64 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_DELTA_ADDED = common dso_local global i32 0, align 4
@GIT_DELTA_RENAMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"0001.txt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"a.txt\00", align 1
@__const.test_diff_rename__rejected_match_can_match_others_three.sources = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"0002.txt\00", align 1
@__const.test_diff_rename__rejected_match_can_match_others_three.targets = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)], align 16
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"refs/heads/renames_similar_two\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"renames/a.txt\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"renames/0001.txt\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"renames/0002.txt\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@test_names_expected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__rejected_match_can_match_others_three() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i8*], align 16
  %11 = alloca [2 x i8*], align 16
  %12 = alloca %struct.rename_expected, align 8
  %13 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %14, i32* %7, align 4
  %15 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %17 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @GIT_DELTA_RENAMED, align 4
  store i32 %19, i32* %18, align 4
  %20 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([2 x i8*]* @__const.test_diff_rename__rejected_match_can_match_others_three.sources to i8*), i64 16, i1 false)
  %21 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([2 x i8*]* @__const.test_diff_rename__rejected_match_can_match_others_three.targets to i8*), i64 16, i1 false)
  %22 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %12, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %12, i32 0, i32 1
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %12, i32 0, i32 2
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8** %26, i8*** %25, align 8
  %27 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %12, i32 0, i32 3
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  store i8** %28, i8*** %27, align 8
  %29 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %12, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %12, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @g_repo, align 4
  %36 = call i32 @git_reference_lookup(i32** %1, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_reference_symbolic_set_target(i32** %2, i32* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32, i32* @g_repo, align 4
  %42 = call i32 @git_checkout_head(i32 %41, %struct.TYPE_8__* %5)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = call i32 @git_repository_index(i32** %3, i32 %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = call i32 @p_unlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @git_index_remove_bypath(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = call i32 @write_similarity_file_two(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %53 = call i32 @write_similarity_file_two(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @git_index_add_bypath(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_index_add_bypath(i32* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @git_index_write(i32* %60)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32, i32* @g_repo, align 4
  %64 = call i32 @git_revparse_single(i32** %4, i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32, i32* @g_repo, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @git_diff_tree_to_index(i32** %6, i32 %66, i32* %67, i32* %68, i32* %7)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @git_diff_find_similar(i32* %71, %struct.TYPE_7__* %8)
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @test_names_expected, align 4
  %76 = call i32 @git_diff_foreach(i32* %74, i32 %75, i32* null, i32* null, i32* null, %struct.rename_expected* %12)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %12, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %12, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %79, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @cl_assert(i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @git_diff_free(i32* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @git_tree_free(i32* %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @git_index_free(i32* %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @git_reference_free(i32* %91)
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @git_reference_free(i32* %93)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_reference_symbolic_set_target(i32**, i32*, i8*, i32*) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @write_similarity_file_two(i8*, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, %struct.rename_expected*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
