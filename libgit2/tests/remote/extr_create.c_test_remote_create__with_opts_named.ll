; ModuleID = '/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__with_opts_named.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__with_opts_named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8**, i32 }

@GIT_REMOTE_CREATE_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"test-new\00", align 1
@_repo = common dso_local global i32 0, align 4
@TEST_URL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"+refs/heads/*:refs/remotes/test-new/*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_remote_create__with_opts_named() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_REMOTE_CREATE_OPTIONS_INIT to i8*), i64 16, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* @_repo, align 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = load i8*, i8** @TEST_URL, align 8
  %9 = call i32 @git_remote_create_with_opts(i32** %1, i8* %8, %struct.TYPE_8__* %3)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i8* @git_remote_name(i32* %11)
  %13 = call i32 @cl_assert_equal_s(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i8* @git_remote_url(i32* %14)
  %16 = load i8*, i8** @TEST_URL, align 8
  %17 = call i32 @cl_assert_equal_s(i8* %15, i8* %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_remote_owner(i32* %18)
  %20 = load i32, i32* @_repo, align 4
  %21 = call i32 @cl_assert_equal_p(i32 %19, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_remote_get_fetch_refspecs(%struct.TYPE_7__* %2, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cl_assert_equal_i(i32 1, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = call i32 @git_strarray_free(%struct.TYPE_7__* %2)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_remote_free(i32* %34)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_create_with_opts(i32**, i8*, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i8* @git_remote_name(i32*) #2

declare dso_local i8* @git_remote_url(i32*) #2

declare dso_local i32 @cl_assert_equal_p(i32, i32) #2

declare dso_local i32 @git_remote_owner(i32*) #2

declare dso_local i32 @git_remote_get_fetch_refspecs(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_7__*) #2

declare dso_local i32 @git_remote_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
