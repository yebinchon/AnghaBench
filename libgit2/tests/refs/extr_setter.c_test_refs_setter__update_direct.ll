; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_setter.c_test_refs_setter__update_direct.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_setter.c_test_refs_setter__update_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@ref_master_name = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8
@ref_test_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_setter__update_direct() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @g_repo, align 4
  %6 = load i32, i32* @ref_master_name, align 4
  %7 = call i32 @git_reference_lookup(i32** %1, i32 %5, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i64 @git_reference_type(i32* %9)
  %11 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_reference_target(i32* %15)
  %17 = call i32 @git_oid_cpy(i32* %4, i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_reference_free(i32* %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = load i32, i32* @ref_test_name, align 4
  %22 = call i32 @git_reference_lookup(i32** %2, i32 %20, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @git_reference_type(i32* %24)
  %26 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_reference_set_target(i32** %3, i32* %30, i32* %4, i32* null)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_reference_free(i32* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_reference_free(i32* %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32, i32* @ref_test_name, align 4
  %39 = call i32 @git_reference_lookup(i32** %2, i32 %37, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i64 @git_reference_type(i32* %41)
  %43 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @cl_assert(i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @git_reference_target(i32* %47)
  %49 = call i32 @cl_assert_equal_oid(i32* %4, i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_reference_free(i32* %50)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_reference_type(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reference_set_target(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
