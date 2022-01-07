; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__can_rename_from_rewrite.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__can_rename_from_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.rename_expected = type { i32, i32*, i8**, i8**, i64, i64 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_DELTA_RENAMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1
@__const.test_diff_rename__can_rename_from_rewrite.sources = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"this-is-a-rename.txt\00", align 1
@__const.test_diff_rename__can_rename_from_rewrite.targets = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)], align 16
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"renames/songof7cities.txt\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"renames/this-is-a-rename.txt\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"renames/ikeepsix.txt\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@GIT_DIFF_FIND_AND_BREAK_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES_FROM_REWRITES = common dso_local global i32 0, align 4
@test_names_expected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__can_rename_from_rewrite() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i8*], align 16
  %8 = alloca [2 x i8*], align 16
  %9 = alloca %struct.rename_expected, align 8
  %10 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %10, i32* %4, align 4
  %11 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @GIT_DELTA_RENAMED, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @GIT_DELTA_RENAMED, align 4
  store i32 %15, i32* %14, align 4
  %16 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([2 x i8*]* @__const.test_diff_rename__can_rename_from_rewrite.sources to i8*), i64 16, i1 false)
  %17 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([2 x i8*]* @__const.test_diff_rename__can_rename_from_rewrite.targets to i8*), i64 16, i1 false)
  %18 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %9, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %9, i32 0, i32 1
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %9, i32 0, i32 2
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8** %22, i8*** %21, align 8
  %23 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %9, i32 0, i32 3
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8** %24, i8*** %23, align 8
  %25 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %9, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %9, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @g_repo, align 4
  %28 = call i32 @git_repository_index(i32** %1, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @p_rename(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @p_rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_index_remove_bypath(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_index_add_bypath(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_index_add_bypath(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_index_write(i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @g_repo, align 4
  %47 = call i32 @git_revparse_single(i32** %2, i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32, i32* @g_repo, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_diff_tree_to_index(i32** %3, i32 %49, i32* %50, i32* %51, i32* %4)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32, i32* @GIT_DIFF_FIND_AND_BREAK_REWRITES, align 4
  %55 = load i32, i32* @GIT_DIFF_FIND_REWRITES, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @GIT_DIFF_FIND_RENAMES_FROM_REWRITES, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @git_diff_find_similar(i32* %62, %struct.TYPE_4__* %5)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @test_names_expected, align 4
  %67 = call i32 @git_diff_foreach(i32* %65, i32 %66, i32* null, i32* null, i32* null, %struct.rename_expected* %9)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %9, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %9, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @cl_assert(i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @git_diff_free(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @git_tree_free(i32* %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_index_free(i32* %80)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @p_rename(i8*, i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, %struct.rename_expected*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
