; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_test_reset_default__resetting_filepaths_clears_previous_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_test_reset_default__resetting_filepaths_clears_previous_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, i32 }
%struct.TYPE_6__ = type { i8**, i32 }

@.str = private unnamed_addr constant [18 x i8] c"conflicts-one.txt\00", align 1
@__const.test_reset_default__resetting_filepaths_clears_previous_conflicts.paths = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"1f85ca51b8e0aac893a621b61a9c2661d6aa6d81\00", align 1
@__const.test_reset_default__resetting_filepaths_clears_previous_conflicts.after_shas = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"mergedrepo\00", align 1
@_pathspecs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@_index = common dso_local global i32 0, align 4
@_target = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"9a05ccb\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_default__resetting_filepaths_clears_previous_conflicts() #0 {
  %1 = alloca [3 x i32*], align 16
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca [1 x i8*], align 8
  %4 = alloca [1 x i8*], align 8
  %5 = bitcast [1 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast ([1 x i8*]* @__const.test_reset_default__resetting_filepaths_clears_previous_conflicts.paths to i8*), i64 8, i1 false)
  %6 = bitcast [1 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast ([1 x i8*]* @__const.test_reset_default__resetting_filepaths_clears_previous_conflicts.after_shas to i8*), i64 8, i1 false)
  %7 = call i32 @initialize(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %8 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0
  store i8** %8, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_pathspecs, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_pathspecs, i32 0, i32 1), align 8
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8** %9, i8*** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 0
  %13 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 1
  %14 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 2
  %15 = load i32, i32* @_index, align 4
  %16 = call i32 @git_index_conflict_get(i32** %12, i32** %13, i32** %14, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @_repo, align 4
  %19 = call i32 @git_revparse_single(i32* @_target, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @_repo, align 4
  %22 = load i32, i32* @_target, align 4
  %23 = call i32 @git_reset_default(i32 %21, i32 %22, %struct.TYPE_7__* @_pathspecs)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @assert_content_in_index(%struct.TYPE_7__* @_pathspecs, i32 1, %struct.TYPE_6__* %2)
  %26 = load i32, i32* @GIT_ENOTFOUND, align 4
  %27 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 0
  %28 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 1
  %29 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 2
  %30 = load i32, i32* @_index, align 4
  %31 = call i32 @git_index_conflict_get(i32** %27, i32** %28, i32** %29, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @cl_assert_equal_i(i32 %26, i32 %31)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initialize(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_conflict_get(i32**, i32**, i32**, i32, i8*) #2

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #2

declare dso_local i32 @git_reset_default(i32, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @assert_content_in_index(%struct.TYPE_7__*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
