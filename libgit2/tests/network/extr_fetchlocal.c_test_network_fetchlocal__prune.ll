; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__prune.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__prune.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_fetchlocal__prune() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  store i32 0, i32* %3, align 4
  %9 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @git_repository_path(i32* %11)
  %13 = call i8* @cl_git_path_url(i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 16, i1 false)
  %15 = load i32, i32* @transfer_cb, align 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32* %3, i32** %19, align 8
  %20 = call i32 @cl_set_cleanup(i32* @cleanup_local_repo, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @git_remote_create(i32** %2, i32* %23, i32 %24, i8* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_remote_fetch(i32* %28, i32* null, %struct.TYPE_9__* %8, i32* null)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_reference_list(%struct.TYPE_8__* %4, i32* %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @cl_assert_equal_i(i32 19, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = call i32 @git_strarray_free(%struct.TYPE_8__* %4)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_remote_free(i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @git_reference_lookup(i32** %5, i32* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @git_reference_delete(i32* %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @git_reference_free(i32* %51)
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %55 = call i32 @git_remote_lookup(i32** %2, i32* %53, i32 %54)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @git_remote_fetch(i32* %57, i32* null, %struct.TYPE_9__* %8, i32* null)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %62 = call i32 @git_remote_prune(i32* %60, %struct.TYPE_10__* %61)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_reference_list(%struct.TYPE_8__* %4, i32* %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @cl_assert_equal_i(i32 18, i32 %69)
  %71 = call i32 @git_strarray_free(%struct.TYPE_8__* %4)
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @git_remote_free(i32* %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @git_reference_lookup(i32** %5, i32* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @git_reference_delete(i32* %77)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @git_reference_free(i32* %80)
  %82 = load i32*, i32** %1, align 8
  %83 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %84 = call i32 @git_remote_lookup(i32** %2, i32* %82, i32 %83)
  %85 = call i32 @cl_git_pass(i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @git_remote_fetch(i32* %86, i32* null, %struct.TYPE_9__* %8, i32* null)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %91 = call i32 @git_remote_prune(i32* %89, %struct.TYPE_10__* %90)
  %92 = call i32 @cl_git_pass(i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @git_reference_list(%struct.TYPE_8__* %4, i32* %93)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @cl_assert_equal_i(i32 17, i32 %98)
  %100 = call i32 @git_strarray_free(%struct.TYPE_8__* %4)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @git_remote_free(i32* %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @git_repository_free(i32* %103)
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

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
