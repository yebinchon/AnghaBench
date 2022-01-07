; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__dup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i64 }

@_remote = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"+refs/heads/*:refs/remotes/test/*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__dup() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32*, align 8
  %3 = load i32*, i32** @_remote, align 8
  %4 = call i32 @git_remote_dup(i32** %2, i32* %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @git_remote_name(i32* %6)
  %8 = load i32*, i32** @_remote, align 8
  %9 = call i8* @git_remote_name(i32* %8)
  %10 = call i32 @cl_assert_equal_s(i8* %7, i8* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @git_remote_url(i32* %11)
  %13 = load i32*, i32** @_remote, align 8
  %14 = call i8* @git_remote_url(i32* %13)
  %15 = call i32 @cl_assert_equal_s(i8* %12, i8* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @git_remote_pushurl(i32* %16)
  %18 = load i32*, i32** @_remote, align 8
  %19 = call i8* @git_remote_pushurl(i32* %18)
  %20 = call i32 @cl_assert_equal_s(i8* %17, i8* %19)
  %21 = load i32*, i32** @_remote, align 8
  %22 = call i32 @git_remote_get_fetch_refspecs(%struct.TYPE_5__* %1, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @cl_assert_equal_i(i32 1, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @git_strarray_free(%struct.TYPE_5__* %1)
  %34 = load i32*, i32** @_remote, align 8
  %35 = call i32 @git_remote_get_push_refspecs(%struct.TYPE_5__* %1, i32* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @cl_assert_equal_i(i32 0, i32 %39)
  %41 = call i32 @git_strarray_free(%struct.TYPE_5__* %1)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_remote_free(i32* %42)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_dup(i32**, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i8* @git_remote_name(i32*) #1

declare dso_local i8* @git_remote_url(i32*) #1

declare dso_local i8* @git_remote_pushurl(i32*) #1

declare dso_local i32 @git_remote_get_fetch_refspecs(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_5__*) #1

declare dso_local i32 @git_remote_get_push_refspecs(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
