; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__can_load_with_an_empty_url.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__can_load_with_an_empty_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i64 }

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"empty-remote-url\00", align 1
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__can_load_with_an_empty_url() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  %2 = load i32, i32* @_repo, align 4
  %3 = call i32 @git_remote_lookup(%struct.TYPE_6__** %1, i32 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %19 = call i32 @git_remote_connect(%struct.TYPE_6__* %17, i32 %18, i32* null, i32* null, i32* null)
  %20 = call i32 @cl_git_fail(i32 %19)
  %21 = call %struct.TYPE_7__* (...) @git_error_last()
  %22 = icmp ne %struct.TYPE_7__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = call %struct.TYPE_7__* (...) @git_error_last()
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GIT_ERROR_INVALID, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = call i32 @git_remote_free(%struct.TYPE_6__* %32)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_lookup(%struct.TYPE_6__**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_remote_connect(%struct.TYPE_6__*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @git_error_last(...) #1

declare dso_local i32 @git_remote_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
