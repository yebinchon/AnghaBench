; ModuleID = '/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__with_opts_detached.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__with_opts_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_REMOTE_CREATE_OPTIONS_INIT = common dso_local global i32 0, align 4
@TEST_URL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_remote_create__with_opts_detached() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GIT_REMOTE_CREATE_OPTIONS_INIT, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32*, i32** @TEST_URL, align 8
  %6 = call i32 @git_remote_create_with_opts(i32** %1, i32* %5, i32* %3)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_remote_name(i32* %8)
  %10 = call i32 @cl_assert_equal_s(i32 %9, i32* null)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_remote_url(i32* %11)
  %13 = load i32*, i32** @TEST_URL, align 8
  %14 = call i32 @cl_assert_equal_s(i32 %12, i32* %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_remote_owner(i32* %15)
  %17 = call i32 @cl_assert_equal_p(i32 %16, i32* null)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_remote_get_fetch_refspecs(%struct.TYPE_4__* %2, i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cl_assert_equal_i(i32 0, i32 %22)
  %24 = call i32 @git_strarray_free(%struct.TYPE_4__* %2)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_remote_free(i32* %25)
  %27 = load i32*, i32** @TEST_URL, align 8
  %28 = call i32 @git_remote_create_with_opts(i32** %1, i32* %27, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_remote_name(i32* %30)
  %32 = call i32 @cl_assert_equal_s(i32 %31, i32* null)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_remote_url(i32* %33)
  %35 = load i32*, i32** @TEST_URL, align 8
  %36 = call i32 @cl_assert_equal_s(i32 %34, i32* %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_remote_owner(i32* %37)
  %39 = call i32 @cl_assert_equal_p(i32 %38, i32* null)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_remote_get_fetch_refspecs(%struct.TYPE_4__* %2, i32* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_i(i32 0, i32 %44)
  %46 = call i32 @git_strarray_free(%struct.TYPE_4__* %2)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_remote_free(i32* %47)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_create_with_opts(i32**, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32*) #1

declare dso_local i32 @git_remote_name(i32*) #1

declare dso_local i32 @git_remote_url(i32*) #1

declare dso_local i32 @cl_assert_equal_p(i32, i32*) #1

declare dso_local i32 @git_remote_owner(i32*) #1

declare dso_local i32 @git_remote_get_fetch_refspecs(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_4__*) #1

declare dso_local i32 @git_remote_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
