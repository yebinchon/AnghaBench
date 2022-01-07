; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_test_diff_patch__config_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_test_diff_patch__config_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8** }

@.str = private unnamed_addr constant [8 x i8] c"26a125e\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"staged_changes_modified_file\00", align 1
@.str.2 = private unnamed_addr constant [248 x i8] c"diff --git c/staged_changes_modified_file i/staged_changes_modified_file\0Aindex 70bd944..906ee77 100644\0A--- c/staged_changes_modified_file\0A+++ i/staged_changes_modified_file\0A@@ -1 +1,2 @@\0A staged_changes_modified_file\0A+staged_changes_modified_file\0A\00", align 1
@.str.3 = private unnamed_addr constant [280 x i8] c"diff --git i/staged_changes_modified_file w/staged_changes_modified_file\0Aindex 906ee77..011c344 100644\0A--- i/staged_changes_modified_file\0A+++ w/staged_changes_modified_file\0A@@ -1,2 +1,3 @@\0A staged_changes_modified_file\0A staged_changes_modified_file\0A+staged_changes_modified_file\0A\00", align 1
@.str.4 = private unnamed_addr constant [272 x i8] c"diff --git staged_changes_modified_file staged_changes_modified_file\0Aindex 906ee77..011c344 100644\0A--- staged_changes_modified_file\0A+++ staged_changes_modified_file\0A@@ -1,2 +1,3 @@\0A staged_changes_modified_file\0A staged_changes_modified_file\0A+staged_changes_modified_file\0A\00", align 1
@.str.5 = private unnamed_addr constant [250 x i8] c"diff --git staged_changes_modified_file staged_changes_modified_file\0Aindex 70bd9443ada0..906ee7711f4f 100644\0A--- staged_changes_modified_file\0A+++ staged_changes_modified_file\0A@@ -1 +1,2 @@\0A staged_changes_modified_file\0A+staged_changes_modified_file\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"diff.mnemonicprefix\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"diff.noprefix\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"core.abbrev\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_patch__config_options() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %13 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([280 x i8], [280 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([272 x i8], [272 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  %15 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %15, i32* @g_repo, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_repository_config(i32** %3, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i8*, i8** %1, align 8
  %21 = call i32* @resolve_commit_oid_to_tree(i32 %19, i8* %20)
  store i32* %21, i32** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  store i8** %8, i8*** %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_config_set_string(i32* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_diff_tree_to_index(i32** %4, i32 %29, i32* %30, i32* null, %struct.TYPE_12__* %7)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @git_diff_num_deltas(i32* %33)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @cl_assert_equal_i(i32 1, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_patch_from_diff(i32** %5, i32* %37, i32 0)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @git_patch_to_buf(%struct.TYPE_13__* %6, i32* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_s(i8* %43, i32 %45)
  %47 = call i32 @git_buf_clear(%struct.TYPE_13__* %6)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @git_patch_free(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @git_diff_free(i32* %50)
  %52 = load i32, i32* @g_repo, align 4
  %53 = call i32 @git_diff_index_to_workdir(i32** %4, i32 %52, i32* null, %struct.TYPE_12__* %7)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @git_diff_num_deltas(i32* %55)
  %57 = trunc i64 %56 to i32
  %58 = call i32 @cl_assert_equal_i(i32 1, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @git_patch_from_diff(i32** %5, i32* %59, i32 0)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @git_patch_to_buf(%struct.TYPE_13__* %6, i32* %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cl_assert_equal_s(i8* %65, i32 %67)
  %69 = call i32 @git_buf_clear(%struct.TYPE_13__* %6)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @git_patch_free(i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @git_diff_free(i32* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @git_config_set_string(i32* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32, i32* @g_repo, align 4
  %78 = call i32 @git_diff_index_to_workdir(i32** %4, i32 %77, i32* null, %struct.TYPE_12__* %7)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i64 @git_diff_num_deltas(i32* %80)
  %82 = trunc i64 %81 to i32
  %83 = call i32 @cl_assert_equal_i(i32 1, i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @git_patch_from_diff(i32** %5, i32* %84, i32 0)
  %86 = call i32 @cl_git_pass(i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @git_patch_to_buf(%struct.TYPE_13__* %6, i32* %87)
  %89 = call i32 @cl_git_pass(i32 %88)
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cl_assert_equal_s(i8* %90, i32 %92)
  %94 = call i32 @git_buf_clear(%struct.TYPE_13__* %6)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @git_patch_free(i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @git_diff_free(i32* %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @git_config_set_int32(i32* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 12)
  %101 = call i32 @cl_git_pass(i32 %100)
  %102 = load i32, i32* @g_repo, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @git_diff_tree_to_index(i32** %4, i32 %102, i32* %103, i32* null, %struct.TYPE_12__* %7)
  %105 = call i32 @cl_git_pass(i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = call i64 @git_diff_num_deltas(i32* %106)
  %108 = trunc i64 %107 to i32
  %109 = call i32 @cl_assert_equal_i(i32 1, i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @git_patch_from_diff(i32** %5, i32* %110, i32 0)
  %112 = call i32 @cl_git_pass(i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @git_patch_to_buf(%struct.TYPE_13__* %6, i32* %113)
  %115 = call i32 @cl_git_pass(i32 %114)
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @cl_assert_equal_s(i8* %116, i32 %118)
  %120 = call i32 @git_buf_clear(%struct.TYPE_13__* %6)
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @git_patch_free(i32* %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @git_diff_free(i32* %123)
  %125 = call i32 @git_buf_dispose(%struct.TYPE_13__* %6)
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @git_tree_free(i32* %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @git_config_free(i32* %128)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_13__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_13__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_config_set_int32(i32*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
