; ModuleID = '/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__with_opts_anonymous.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__with_opts_anonymous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_REMOTE_CREATE_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@_repo = common dso_local global i32 0, align 4
@TEST_URL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_remote_create__with_opts_anonymous() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_REMOTE_CREATE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @_repo, align 4
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** @TEST_URL, align 8
  %8 = call i32 @git_remote_create_with_opts(i32** %1, i32* %7, %struct.TYPE_8__* %3)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_remote_name(i32* %10)
  %12 = call i32 @cl_assert_equal_s(i32 %11, i32* null)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_remote_url(i32* %13)
  %15 = load i32*, i32** @TEST_URL, align 8
  %16 = call i32 @cl_assert_equal_s(i32 %14, i32* %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_remote_owner(i32* %17)
  %19 = load i32, i32* @_repo, align 4
  %20 = call i32 @cl_assert_equal_p(i32 %18, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_remote_get_fetch_refspecs(%struct.TYPE_7__* %2, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cl_assert_equal_i(i32 0, i32 %25)
  %27 = call i32 @git_strarray_free(%struct.TYPE_7__* %2)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_remote_free(i32* %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_create_with_opts(i32**, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32*) #2

declare dso_local i32 @git_remote_name(i32*) #2

declare dso_local i32 @git_remote_url(i32*) #2

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
