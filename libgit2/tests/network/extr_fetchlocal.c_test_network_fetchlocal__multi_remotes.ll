; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__multi_remotes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__multi_remotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@transfer_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"test_with_pushurl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_fetchlocal__multi_remotes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = load i32, i32* @transfer_cb, align 4
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @git_remote_set_url(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_remote_lookup(i32** %2, i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_remote_fetch(i32* %19, i32* null, %struct.TYPE_10__* %5, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_reference_list(%struct.TYPE_9__* %4, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @cl_assert_equal_i(i32 33, i32 %27)
  %29 = call i32 @git_strarray_free(%struct.TYPE_9__* %4)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @git_remote_set_url(i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_remote_lookup(i32** %3, i32* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @git_remote_fetch(i32* %37, i32* null, %struct.TYPE_10__* %5, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_reference_list(%struct.TYPE_9__* %4, i32* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @cl_assert_equal_i(i32 45, i32 %45)
  %47 = call i32 @git_strarray_free(%struct.TYPE_9__* %4)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @git_remote_free(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_remote_free(i32* %50)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_set_url(i32*, i8*, i32) #1

declare dso_local i32 @cl_git_fixture_url(i8*) #1

declare dso_local i32 @git_remote_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_remote_fetch(i32*, i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @git_reference_list(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_9__*) #1

declare dso_local i32 @git_remote_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
