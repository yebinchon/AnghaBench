; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__prune_overlapping.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__prune_overlapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i8*, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@transfer_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"refs/pull/42/head\00", align 1
@cleanup_local_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@GIT_REMOTE_ORIGIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"remote.origin.prune\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"remote.origin.fetch\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"^$\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"refs/pull/*/head:refs/remotes/origin/pr/*\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"refs/remotes/origin/master\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"refs/remotes/origin/pr/42\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"refs/heads/*:refs/remotes/origin/*\00", align 1
@update_tips_fail_on_call = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_fetchlocal__prune_overlapping() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  store i32 0, i32* %3, align 4
  %11 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @git_repository_path(i32* %13)
  %15 = call i8* @cl_git_path_url(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 24, i1 false)
  %17 = load i32, i32* @transfer_cb, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32* %3, i32** %21, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @git_reference_lookup(i32** %5, i32* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @git_reference_target(i32* %25)
  %27 = call i32 @git_oid_cpy(i32* %7, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @git_reference_create(i32** %5, i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32 1, i32* null)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @git_reference_free(i32* %33)
  %35 = call i32 @cl_set_cleanup(i32* @cleanup_local_repo, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @git_remote_create(i32** %2, i32* %38, i32 %39, i8* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_repository_config(i32** %6, i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @git_config_set_bool(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @git_config_set_multivar(i32* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @git_remote_free(i32* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %56 = call i32 @git_remote_lookup(i32** %2, i32* %54, i32 %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @git_remote_fetch(i32* %58, i32* null, %struct.TYPE_10__* %10, i32* null)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @assert_ref_exists(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @assert_ref_exists(i32* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @git_reference_list(%struct.TYPE_9__* %4, i32* %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @cl_assert_equal_i(i32 20, i32 %70)
  %72 = call i32 @git_strarray_free(%struct.TYPE_9__* %4)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @git_config_delete_multivar(i32* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @git_config_set_multivar(i32* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %78 = call i32 @cl_git_pass(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @git_config_set_multivar(i32* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @git_remote_free(i32* %82)
  %84 = load i32*, i32** %1, align 8
  %85 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %86 = call i32 @git_remote_lookup(i32** %2, i32* %84, i32 %85)
  %87 = call i32 @cl_git_pass(i32 %86)
  %88 = load i8*, i8** @update_tips_fail_on_call, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @git_remote_fetch(i32* %91, i32* null, %struct.TYPE_10__* %10, i32* null)
  %93 = call i32 @cl_git_pass(i32 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @assert_ref_exists(i32* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @assert_ref_exists(i32* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @git_reference_list(%struct.TYPE_9__* %4, i32* %98)
  %100 = call i32 @cl_git_pass(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @cl_assert_equal_i(i32 20, i32 %103)
  %105 = call i32 @git_strarray_free(%struct.TYPE_9__* %4)
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @git_config_delete_multivar(i32* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %108 = call i32 @cl_git_pass(i32 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @git_config_set_multivar(i32* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %111 = call i32 @cl_git_pass(i32 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @git_config_set_multivar(i32* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %114 = call i32 @cl_git_pass(i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @git_remote_free(i32* %115)
  %117 = load i32*, i32** %1, align 8
  %118 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %119 = call i32 @git_remote_lookup(i32** %2, i32* %117, i32 %118)
  %120 = call i32 @cl_git_pass(i32 %119)
  %121 = load i8*, i8** @update_tips_fail_on_call, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @git_remote_fetch(i32* %124, i32* null, %struct.TYPE_10__* %10, i32* null)
  %126 = call i32 @cl_git_pass(i32 %125)
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @git_config_free(i32* %127)
  %129 = call i32 @git_strarray_free(%struct.TYPE_9__* %4)
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @git_remote_free(i32* %130)
  %132 = load i32*, i32** %1, align 8
  %133 = call i32 @git_repository_free(i32* %132)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i8* @cl_git_path_url(i32) #2

declare dso_local i32 @git_repository_path(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_reference_target(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32*, i32, i32*) #2

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_remote_create(i32**, i32*, i32, i8*) #2

declare dso_local i32 @git_repository_config(i32**, i32*) #2

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #2

declare dso_local i32 @git_config_set_multivar(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32*, i32) #2

declare dso_local i32 @git_remote_fetch(i32*, i32*, %struct.TYPE_10__*, i32*) #2

declare dso_local i32 @assert_ref_exists(i32*, i8*) #2

declare dso_local i32 @git_reference_list(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_9__*) #2

declare dso_local i32 @git_config_delete_multivar(i32*, i8*, i8*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
