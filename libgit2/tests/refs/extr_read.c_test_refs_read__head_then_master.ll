; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__head_then_master.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__head_then_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@head_tracker_sym_ref_name = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@current_head_target = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_read__head_then_master() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @g_repo, align 4
  %5 = load i32, i32* @head_tracker_sym_ref_name, align 4
  %6 = call i32 @git_reference_lookup(i32** %1, i32 %4, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_reference_resolve(i32** %3, i32* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_reference_free(i32* %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32, i32* @GIT_HEAD_FILE, align 4
  %15 = call i32 @git_reference_lookup(i32** %1, i32 %13, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_reference_resolve(i32** %2, i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_reference_target(i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_reference_target(i32* %22)
  %24 = call i32 @cl_assert_equal_oid(i32 %21, i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_reference_free(i32* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_reference_free(i32* %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32, i32* @current_head_target, align 4
  %31 = call i32 @git_reference_lookup(i32** %1, i32 %29, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_reference_resolve(i32** %2, i32* %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @git_reference_target(i32* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_reference_target(i32* %38)
  %40 = call i32 @cl_assert_equal_oid(i32 %37, i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_reference_free(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_reference_free(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_reference_free(i32* %45)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #1

declare dso_local i32 @git_reference_resolve(i32**, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
