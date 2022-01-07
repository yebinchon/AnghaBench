; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_nonrefreshing.c_test_odb_backend_nonrefreshing__readprefix_is_invoked_once_on_success.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_nonrefreshing.c_test_odb_backend_nonrefreshing__readprefix_is_invoked_once_on_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@_repo = common dso_local global i32 0, align 4
@_existing_oid = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@_fake = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_backend_nonrefreshing__readprefix_is_invoked_once_on_success() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @_repo, align 4
  %3 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %4 = call i32 @git_object_lookup_prefix(i32** %1, i32 %2, i32* @_existing_oid, i32 7, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_fake, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cl_assert_equal_i(i32 1, i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_object_free(i32* %10)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object_lookup_prefix(i32**, i32, i32*, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
