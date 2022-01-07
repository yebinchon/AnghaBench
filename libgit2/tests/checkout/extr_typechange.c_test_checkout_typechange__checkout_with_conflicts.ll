; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_typechange.c_test_checkout_typechange__checkout_with_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_typechange.c_test_checkout_typechange__checkout_with_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GIT_CHECKOUT_NOTIFY_CONFLICT = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_UNTRACKED = common dso_local global i32 0, align 4
@notify_counter = common dso_local global i32 0, align 4
@g_typechange_oids = common dso_local global i32** null, align 8
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"typechanges/a/blocker\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"typechanges/b\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"typechanges/c/sub/sub/file\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"typechanges/d\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"typechanges/untracked\00", align 1
@make_submodule_dirty = common dso_local global i32 0, align 4
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@g_typechange_expected_conflicts = common dso_local global i32* null, align 8
@g_typechange_expected_untracked = common dso_local global i32* null, align 8
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_REMOVE_UNTRACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_typechange__checkout_with_conflicts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  %6 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 24, i1 false)
  %7 = load i32, i32* @GIT_CHECKOUT_NOTIFY_CONFLICT, align 4
  %8 = load i32, i32* @GIT_CHECKOUT_NOTIFY_UNTRACKED, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @notify_counter, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %13, align 8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %103, %0
  %15 = load i32**, i32*** @g_typechange_oids, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %106

21:                                               ; preds = %14
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i32**, i32*** @g_typechange_oids, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @git_revparse_single(i32** %2, i32 %22, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @force_create_file(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @force_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @force_create_file(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %34 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %33)
  %35 = call i32 @p_mkdir(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %36 = call i32 @force_create_file(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32, i32* @make_submodule_dirty, align 4
  %39 = call i32 @git_submodule_foreach(i32 %37, i32 %38, i32* null)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 24)
  %44 = load i32, i32* @g_repo, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @git_checkout_tree(i32 %44, i32* %45, %struct.TYPE_7__* %3)
  %47 = call i32 @cl_git_fail(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @g_typechange_expected_conflicts, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cl_assert_equal_i(i32 %49, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @g_typechange_expected_untracked, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_i(i32 %57, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cl_assert_equal_i(i32 %65, i32 0)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cl_assert_equal_i(i32 %68, i32 0)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cl_assert_equal_i(i32 %71, i32 0)
  %73 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %74 = load i32, i32* @GIT_CHECKOUT_REMOVE_UNTRACKED, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 24)
  %78 = call i32 @git_path_exists(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @cl_assert(i32 %78)
  %80 = load i32, i32* @g_repo, align 4
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @git_checkout_tree(i32 %80, i32* %81, %struct.TYPE_7__* %3)
  %83 = call i32 @cl_git_pass(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cl_assert_equal_i(i32 0, i32 %85)
  %87 = call i32 @git_path_exists(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @cl_assert(i32 %90)
  %92 = load i32, i32* @g_repo, align 4
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @git_object_id(i32* %93)
  %95 = call i32 @git_repository_set_head_detached(i32 %92, i32 %94)
  %96 = call i32 @cl_git_pass(i32 %95)
  %97 = load i32, i32* @g_repo, align 4
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @git_object_id(i32* %98)
  %100 = call i32 @assert_workdir_matches_tree(i32 %97, i32 %99, i32* null, i32 1)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @git_object_free(i32* %101)
  br label %103

103:                                              ; preds = %21
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %1, align 4
  br label %14

106:                                              ; preds = %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i32*) #2

declare dso_local i32 @force_create_file(i8*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_submodule_foreach(i32, i32, i32*) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

declare dso_local i32 @git_repository_set_head_detached(i32, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @assert_workdir_matches_tree(i32, i32, i32*, i32) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
