; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_drop.c_test_stash_drop__dropping_the_last_entry_removes_the_stash.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_drop.c_test_stash_drop__dropping_the_last_entry_removes_the_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@GIT_REFS_STASH_FILE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_drop__dropping_the_last_entry_removes_the_stash() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @push_three_states()
  %3 = load i32, i32* @repo, align 4
  %4 = load i32, i32* @GIT_REFS_STASH_FILE, align 4
  %5 = call i32 @git_reference_lookup(i32** %1, i32 %3, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_reference_free(i32* %7)
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_stash_drop(i32 %9, i32 0)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_stash_drop(i32 %12, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_stash_drop(i32 %15, i32 0)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = load i32, i32* @GIT_REFS_STASH_FILE, align 4
  %20 = call i32 @git_reference_lookup(i32** %1, i32 %18, i32 %19)
  %21 = load i32, i32* @GIT_ENOTFOUND, align 4
  %22 = call i32 @cl_git_fail_with(i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @push_three_states(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_stash_drop(i32, i32) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
