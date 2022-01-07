; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__complete.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@transfer_cb = common dso_local global i32 0, align 4
@cleanup_local_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@GIT_REMOTE_ORIGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_fetchlocal__complete() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  store i32 0, i32* %3, align 4
  %7 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = call i8* @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  %9 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 16, i1 false)
  %10 = load i32, i32* @transfer_cb, align 4
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32* %3, i32** %14, align 8
  %15 = call i32 @cl_set_cleanup(i32* @cleanup_local_repo, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @git_remote_create(i32** %2, i32* %18, i32 %19, i8* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_remote_fetch(i32* %23, i32* null, %struct.TYPE_10__* %6, i32* null)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_reference_list(%struct.TYPE_9__* %4, i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @cl_assert_equal_i(i32 19, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i32 @git_strarray_free(%struct.TYPE_9__* %4)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_remote_free(i32* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_repository_free(i32* %40)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cl_git_fixture_url(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_remote_create(i32**, i32*, i32, i8*) #2

declare dso_local i32 @git_remote_fetch(i32*, i32*, %struct.TYPE_10__*, i32*) #2

declare dso_local i32 @git_reference_list(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_9__*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
