; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_test_reset_default__staged_rename_reset_delete.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_test_reset_default__staged_rename_reset_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"new.txt\00", align 1
@__const.test_reset_default__staged_rename_reset_delete.paths = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"testrepo2\00", align 1
@_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"renamed.txt\00", align 1
@_pathspecs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@_target = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_default__staged_rename_reset_delete() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca [1 x i8*], align 8
  %4 = bitcast [1 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast ([1 x i8*]* @__const.test_reset_default__staged_rename_reset_delete.paths to i8*), i64 8, i1 false)
  %5 = call i32 @initialize(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @_index, align 4
  %7 = call %struct.TYPE_10__* @git_index_get_bypath(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = call i32 @cl_assert(%struct.TYPE_10__* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = call i32 @memcpy(%struct.TYPE_10__* %1, %struct.TYPE_10__* %10, i32 8)
  %12 = load i32, i32* @_index, align 4
  %13 = call i32 @git_index_remove_bypath(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @_index, align 4
  %17 = call i32 @git_index_add(i32 %16, %struct.TYPE_10__* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0
  store i8** %19, i8*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_pathspecs, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_pathspecs, i32 0, i32 1), align 8
  %20 = call i32 @assert_content_in_index(%struct.TYPE_11__* @_pathspecs, i32 0, i32* null)
  %21 = load i32, i32* @_repo, align 4
  %22 = call i32 @git_revparse_single(i32* @_target, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @_repo, align 4
  %25 = load i32, i32* @_target, align 4
  %26 = call i32 @git_reset_default(i32 %24, i32 %25, %struct.TYPE_11__* @_pathspecs)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = call i32 @assert_content_in_index(%struct.TYPE_11__* @_pathspecs, i32 1, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initialize(i8*) #2

declare dso_local %struct.TYPE_10__* @git_index_get_bypath(i32, i8*, i32) #2

declare dso_local i32 @cl_assert(%struct.TYPE_10__*) #2

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_remove_bypath(i32, i8*) #2

declare dso_local i32 @git_index_add(i32, %struct.TYPE_10__*) #2

declare dso_local i32 @assert_content_in_index(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #2

declare dso_local i32 @git_reset_default(i32, i32, %struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
