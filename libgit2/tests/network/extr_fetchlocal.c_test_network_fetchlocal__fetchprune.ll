; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__fetchprune.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__fetchprune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@transfer_cb = common dso_local global i32 0, align 4
@cleanup_local_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@GIT_REMOTE_ORIGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"refs/heads/br2\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"refs/heads/packed\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"remote.origin.prune\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_fetchlocal__fetchprune() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store i32 0, i32* %3, align 4
  %10 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @git_repository_path(i32* %12)
  %14 = call i8* @cl_git_path_url(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 16, i1 false)
  %16 = load i32, i32* @transfer_cb, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32* %3, i32** %20, align 8
  %21 = call i32 @cl_set_cleanup(i32* @cleanup_local_repo, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @git_remote_create(i32** %2, i32* %24, i32 %25, i8* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_remote_fetch(i32* %29, i32* null, %struct.TYPE_9__* %9, i32* null)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_reference_list(%struct.TYPE_8__* %4, i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @cl_assert_equal_i(i32 19, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = call i32 @git_strarray_free(%struct.TYPE_8__* %4)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_remote_free(i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @git_reference_lookup(i32** %5, i32* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_reference_delete(i32* %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @git_reference_free(i32* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %56 = call i32 @git_remote_lookup(i32** %2, i32* %54, i32 %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @git_remote_fetch(i32* %58, i32* null, %struct.TYPE_9__* %9, i32* null)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %63 = call i32 @git_remote_prune(i32* %61, %struct.TYPE_10__* %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @git_reference_list(%struct.TYPE_8__* %4, i32* %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @cl_assert_equal_i(i32 18, i32 %70)
  %72 = call i32 @git_strarray_free(%struct.TYPE_8__* %4)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @git_remote_free(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @git_reference_lookup(i32** %5, i32* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @git_reference_delete(i32* %78)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @git_reference_free(i32* %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @git_repository_config(i32** %6, i32* %83)
  %85 = call i32 @cl_git_pass(i32 %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @git_config_set_bool(i32* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @git_config_free(i32* %89)
  %91 = load i32*, i32** %1, align 8
  %92 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %93 = call i32 @git_remote_lookup(i32** %2, i32* %91, i32 %92)
  %94 = call i32 @cl_git_pass(i32 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @git_remote_prune_refs(i32* %95)
  %97 = call i32 @cl_assert_equal_i(i32 1, i32 %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @git_remote_fetch(i32* %98, i32* null, %struct.TYPE_9__* %9, i32* null)
  %100 = call i32 @cl_git_pass(i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @git_reference_list(%struct.TYPE_8__* %4, i32* %101)
  %103 = call i32 @cl_git_pass(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @cl_assert_equal_i(i32 17, i32 %106)
  %108 = call i32 @git_strarray_free(%struct.TYPE_8__* %4)
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @git_remote_free(i32* %109)
  %111 = load i32*, i32** %1, align 8
  %112 = call i32 @git_repository_free(i32* %111)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i8* @cl_git_path_url(i32) #2

declare dso_local i32 @git_repository_path(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_remote_create(i32**, i32*, i32, i8*) #2

declare dso_local i32 @git_remote_fetch(i32*, i32*, %struct.TYPE_9__*, i32*) #2

declare dso_local i32 @git_reference_list(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_8__*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @git_reference_delete(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32*, i32) #2

declare dso_local i32 @git_remote_prune(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_repository_config(i32**, i32*) #2

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_remote_prune_refs(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
