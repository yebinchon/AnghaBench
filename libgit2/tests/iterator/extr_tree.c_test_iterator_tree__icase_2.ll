; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_tree.c_test_iterator_tree__icase_2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_tree.c_test_iterator_tree__icase_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@test_iterator_tree__icase_2.expect_basic = internal global [13 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [13 x i8] c"current_file\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"file_deleted\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"staged_changes\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"staged_changes_file_deleted\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"staged_changes_modified_file\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"staged_delete_file_deleted\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"staged_delete_modified_file\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"subdir.txt\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"subdir/current_file\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"subdir/deleted_file\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"subdir/modified_file\00", align 1
@test_iterator_tree__icase_2.expect_trees = internal global [14 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* null], align 16
@.str.12 = private unnamed_addr constant [8 x i8] c"subdir/\00", align 1
@test_iterator_tree__icase_2.expect_noauto = internal global [11 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_TREES = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_tree__icase_2() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_head_tree(i32** %3, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @git_iterator_for_tree(i32** %1, i32* %9, %struct.TYPE_4__* null)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @expect_iterator_items(i32* %12, i32 12, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @test_iterator_tree__icase_2.expect_basic, i64 0, i64 0), i32 12, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @test_iterator_tree__icase_2.expect_basic, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_iterator_free(i32* %14)
  %16 = load i32, i32* @GIT_ITERATOR_INCLUDE_TREES, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @git_iterator_for_tree(i32** %1, i32* %18, %struct.TYPE_4__* %2)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @expect_iterator_items(i32* %21, i32 13, i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @test_iterator_tree__icase_2.expect_trees, i64 0, i64 0), i32 13, i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @test_iterator_tree__icase_2.expect_trees, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_iterator_free(i32* %23)
  %25 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_iterator_for_tree(i32** %1, i32* %27, %struct.TYPE_4__* %2)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @expect_iterator_items(i32* %30, i32 10, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @test_iterator_tree__icase_2.expect_noauto, i64 0, i64 0), i32 13, i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @test_iterator_tree__icase_2.expect_trees, i64 0, i64 0))
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_iterator_free(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @git_tree_free(i32* %34)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_head_tree(i32**, i32) #2

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @expect_iterator_items(i32*, i32, i8**, i32, i8**) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
