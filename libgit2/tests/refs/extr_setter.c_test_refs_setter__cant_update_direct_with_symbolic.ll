; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_setter.c_test_refs_setter__cant_update_direct_with_symbolic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_setter.c_test_refs_setter__cant_update_direct_with_symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@ref_master_name = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8
@ref_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_setter__cant_update_direct_with_symbolic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = load i32, i32* @ref_master_name, align 4
  %6 = call i32 @git_reference_lookup(i32** %1, i32 %4, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i64 @git_reference_type(i32* %8)
  %10 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_reference_target(i32* %14)
  %16 = call i32 @git_oid_cpy(i32* %3, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @ref_name, align 4
  %19 = call i32 @git_reference_symbolic_set_target(i32** %2, i32* %17, i32 %18, i32* null)
  %20 = call i32 @cl_git_fail(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_reference_free(i32* %21)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_reference_type(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_reference_symbolic_set_target(i32**, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
