; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__api.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"nonexistent\00", align 1
@GIT_ENOTFOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_submodules__api() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @setup_fixture_submodules()
  store i32 %2, i32* @g_repo, align 4
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i64 @git_submodule_lookup(i32** null, i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = load i64, i64* @GIT_ENOTFOUND, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i64 @git_submodule_lookup(i32** null, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i64, i64* @GIT_ENOTFOUND, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i64 @git_submodule_lookup(i32** %1, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i64 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_submodule_name(i32* %22)
  %24 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_submodule_path(i32* %25)
  %27 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_submodule_free(i32* %28)
  ret void
}

declare dso_local i32 @setup_fixture_submodules(...) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_submodule_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_git_pass(i64) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_submodule_name(i32*) #1

declare dso_local i32 @git_submodule_path(i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
