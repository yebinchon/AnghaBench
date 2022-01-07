; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__cannot_reset_in_a_bare_repository.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__cannot_reset_in_a_bare_repository.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@target = common dso_local global i32 0, align 4
@KNOWN_COMMIT_IN_BARE_REPO = common dso_local global i32 0, align 4
@GIT_EBAREREPO = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_hard__cannot_reset_in_a_bare_repository() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @git_repository_open(i32** %1, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @git_repository_is_bare(i32* %5)
  %7 = icmp eq i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @KNOWN_COMMIT_IN_BARE_REPO, align 4
  %12 = call i32 @git_revparse_single(i32* @target, i32* %10, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_EBAREREPO, align 4
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* @target, align 4
  %17 = load i32, i32* @GIT_RESET_HARD, align 4
  %18 = call i32 @git_reset(i32* %15, i32 %16, i32 %17, i32* null)
  %19 = call i32 @cl_assert_equal_i(i32 %14, i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_repository_free(i32* %20)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_is_bare(i32*) #1

declare dso_local i32 @git_revparse_single(i32*, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reset(i32*, i32, i32, i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
