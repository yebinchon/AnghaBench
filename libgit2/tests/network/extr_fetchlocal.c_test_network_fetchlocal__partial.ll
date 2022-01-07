; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__partial.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"partial-testrepo\00", align 1
@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@transfer_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_REMOTE_ORIGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_fetchlocal__partial() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  store i32 0, i32* %3, align 4
  %8 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 16, i1 false)
  %10 = load i32, i32* @transfer_cb, align 4
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32* %3, i32** %14, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_reference_list(%struct.TYPE_9__* %4, i32* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @cl_assert_equal_i(i32 1, i32 %20)
  %22 = call i8* @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %5, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @git_remote_create(i32** %2, i32* %23, i32 %24, i8* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_remote_fetch(i32* %28, i32* null, %struct.TYPE_10__* %6, i32* null)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_strarray_free(%struct.TYPE_9__* %4)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_reference_list(%struct.TYPE_9__* %4, i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @cl_assert_equal_i(i32 20, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = call i32 @git_strarray_free(%struct.TYPE_9__* %4)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_remote_free(i32* %44)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_list(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i8* @cl_git_fixture_url(i8*) #1

declare dso_local i32 @git_remote_create(i32**, i32*, i32, i8*) #1

declare dso_local i32 @git_remote_fetch(i32*, i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_9__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_remote_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
