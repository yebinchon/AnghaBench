; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_races.c_test_refs_races__create_matching.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_races.c_test_refs_races__create_matching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commit_id = common dso_local global i32 0, align 4
@other_commit_id = common dso_local global i32 0, align 4
@GIT_EMODIFIED = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@refname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_races__create_matching() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @commit_id, align 4
  %7 = call i32 @git_oid_fromstr(i32* %4, i32 %6)
  %8 = load i32, i32* @other_commit_id, align 4
  %9 = call i32 @git_oid_fromstr(i32* %5, i32 %8)
  %10 = load i32, i32* @GIT_EMODIFIED, align 4
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i32, i32* @refname, align 4
  %13 = call i32 @git_reference_create_matching(i32** %1, i32 %11, i32 %12, i32* %5, i32 1, i32* %5, i32* null)
  %14 = call i32 @cl_git_fail_with(i32 %10, i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i32, i32* @refname, align 4
  %17 = call i32 @git_reference_lookup(i32** %1, i32 %15, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32, i32* @refname, align 4
  %21 = call i32 @git_reference_create_matching(i32** %2, i32 %19, i32 %20, i32* %5, i32 1, i32* %4, i32* null)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @GIT_EMODIFIED, align 4
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_reference_set_target(i32** %3, i32* %24, i32* %5, i32* null)
  %26 = call i32 @cl_git_fail_with(i32 %23, i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_reference_free(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_reference_free(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_reference_free(i32* %31)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_reference_create_matching(i32**, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #1

declare dso_local i32 @git_reference_set_target(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
