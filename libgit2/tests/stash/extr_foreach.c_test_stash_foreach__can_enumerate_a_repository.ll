; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_foreach.c_test_stash_foreach__can_enumerate_a_repository.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_foreach.c_test_stash_foreach__can_enumerate_a_repository.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i64 }

@.str = private unnamed_addr constant [41 x i8] c"493568b7a2681187aaac8a58d3f1eab1527cba84\00", align 1
@__const.test_stash_foreach__can_enumerate_a_repository.oids_default = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [41 x i8] c"7f89a8b15c878809c5c54d1ff8f8c9674154017b\00", align 1
@__const.test_stash_foreach__can_enumerate_a_repository.oids_untracked = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [41 x i8] c"c95599a8fef20a7e57582c6727b1a0d02e0a5828\00", align 1
@__const.test_stash_foreach__can_enumerate_a_repository.oids_ignored = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@repo = common dso_local global i32 0, align 4
@REPO_NAME = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@stash_tip_oid = common dso_local global i32 0, align 4
@GIT_STASH_DEFAULT = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@callback_cb = common dso_local global i32 0, align 4
@GIT_STASH_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STASH_INCLUDE_IGNORED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_foreach__can_enumerate_a_repository() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca [3 x i8*], align 16
  %3 = alloca [4 x i8*], align 16
  %4 = bitcast [2 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x i8*]* @__const.test_stash_foreach__can_enumerate_a_repository.oids_default to i8*), i64 16, i1 false)
  %5 = bitcast [3 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i8*]* @__const.test_stash_foreach__can_enumerate_a_repository.oids_untracked to i8*), i64 24, i1 false)
  %6 = bitcast [4 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x i8*]* @__const.test_stash_foreach__can_enumerate_a_repository.oids_ignored to i8*), i64 32, i1 false)
  %7 = load i32, i32* @REPO_NAME, align 4
  %8 = call i32 @git_repository_init(i32* @repo, i32 %7, i32 0)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @repo, align 4
  %11 = load i32, i32* @signature, align 4
  %12 = call i32 @setup_stash(i32 %10, i32 %11)
  %13 = load i32, i32* @repo, align 4
  %14 = load i32, i32* @signature, align 4
  %15 = load i32, i32* @GIT_STASH_DEFAULT, align 4
  %16 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %13, i32 %14, i32* null, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  store i8** %18, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 0), align 8
  %19 = load i32, i32* @repo, align 4
  %20 = load i32, i32* @callback_cb, align 4
  %21 = call i32 @git_stash_foreach(i32 %19, i32 %20, %struct.TYPE_3__* @data)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 1), align 8
  %24 = call i32 @cl_assert_equal_i(i32 1, i64 %23)
  %25 = load i32, i32* @repo, align 4
  %26 = load i32, i32* @signature, align 4
  %27 = load i32, i32* @GIT_STASH_INCLUDE_UNTRACKED, align 4
  %28 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %25, i32 %26, i32* null, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 0
  store i8** %30, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 1), align 8
  %31 = load i32, i32* @repo, align 4
  %32 = load i32, i32* @callback_cb, align 4
  %33 = call i32 @git_stash_foreach(i32 %31, i32 %32, %struct.TYPE_3__* @data)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 1), align 8
  %36 = call i32 @cl_assert_equal_i(i32 2, i64 %35)
  %37 = load i32, i32* @repo, align 4
  %38 = load i32, i32* @signature, align 4
  %39 = load i32, i32* @GIT_STASH_INCLUDE_IGNORED, align 4
  %40 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %37, i32 %38, i32* null, i32 %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 0
  store i8** %42, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 1), align 8
  %43 = load i32, i32* @repo, align 4
  %44 = load i32, i32* @callback_cb, align 4
  %45 = call i32 @git_stash_foreach(i32 %43, i32 %44, %struct.TYPE_3__* @data)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 1), align 8
  %48 = call i32 @cl_assert_equal_i(i32 3, i64 %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32*, i32, i32) #2

declare dso_local i32 @setup_stash(i32, i32) #2

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @git_stash_foreach(i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
