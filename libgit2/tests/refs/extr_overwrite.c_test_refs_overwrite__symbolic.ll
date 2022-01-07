; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_overwrite.c_test_refs_overwrite__symbolic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_overwrite.c_test_refs_overwrite__symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@ref_branch_name = common dso_local global i32 0, align 4
@ref_master_name = common dso_local global i32 0, align 4
@ref_name = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_overwrite__symbolic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = load i32, i32* @ref_branch_name, align 4
  %5 = load i32, i32* @ref_master_name, align 4
  %6 = call i32 @git_reference_symbolic_create(i32** %2, i32 %3, i32 %4, i32 %5, i32 0, i32* null)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i32, i32* @ref_name, align 4
  %10 = load i32, i32* @ref_branch_name, align 4
  %11 = call i32 @git_reference_symbolic_create(i32** %1, i32 %8, i32 %9, i32 %10, i32 0, i32* null)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_reference_free(i32* %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i32, i32* @ref_name, align 4
  %17 = call i32 @git_reference_lookup(i32** %1, i32 %15, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_reference_type(i32* %19)
  %21 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @cl_assert(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_reference_symbolic_target(i32* %24)
  %26 = load i32, i32* @ref_branch_name, align 4
  %27 = call i32 @cl_assert_equal_s(i32 %25, i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32, i32* @ref_name, align 4
  %32 = load i32, i32* @ref_master_name, align 4
  %33 = call i32 @git_reference_symbolic_create(i32** %1, i32 %30, i32 %31, i32 %32, i32 0, i32* null)
  %34 = call i32 @cl_git_fail(i32 %33)
  %35 = load i32, i32* @g_repo, align 4
  %36 = load i32, i32* @ref_name, align 4
  %37 = load i32, i32* @ref_master_name, align 4
  %38 = call i32 @git_reference_symbolic_create(i32** %1, i32 %35, i32 %36, i32 %37, i32 1, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_reference_free(i32* %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = load i32, i32* @ref_name, align 4
  %44 = call i32 @git_reference_lookup(i32** %1, i32 %42, i32 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @git_reference_type(i32* %46)
  %48 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_reference_symbolic_target(i32* %51)
  %53 = load i32, i32* @ref_master_name, align 4
  %54 = call i32 @cl_assert_equal_s(i32 %52, i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @git_reference_free(i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @git_reference_free(i32* %57)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_symbolic_create(i32**, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_type(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @git_reference_symbolic_target(i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
