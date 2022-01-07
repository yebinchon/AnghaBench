; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_nonrefreshing.c_test_odb_backend_nonrefreshing__readheader_is_invoked_once_on_failure.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_nonrefreshing.c_test_odb_backend_nonrefreshing__readheader_is_invoked_once_on_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@_repo = common dso_local global i32 0, align 4
@_nonexisting_oid = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@_fake = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_backend_nonrefreshing__readheader_is_invoked_once_on_failure() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @_repo, align 4
  %5 = call i32 @git_repository_odb__weakptr(i32** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_odb_read_header(i64* %2, i32* %3, i32* %7, i32* @_nonexisting_oid)
  %9 = load i32, i32* @GIT_ENOTFOUND, align 4
  %10 = call i32 @cl_git_fail_with(i32 %8, i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_fake, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cl_assert_equal_i(i32 1, i32 %13)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_odb_read_header(i64*, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
