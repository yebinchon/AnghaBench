; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_setter.c_test_refs_setter__update_symbolic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_setter.c_test_refs_setter__update_symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@ref_master_name = common dso_local global i32 0, align 4
@ref_test_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_setter__update_symbolic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_reference_lookup(i32** %1, i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i64 @git_reference_type(i32* %6)
  %8 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_reference_symbolic_target(i32* %12)
  %14 = load i32, i32* @ref_master_name, align 4
  %15 = call i64 @strcmp(i32 %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @ref_test_name, align 4
  %21 = call i32 @git_reference_symbolic_set_target(i32** %2, i32* %19, i32 %20, i32* null)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_reference_free(i32* %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_reference_free(i32* %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = call i32 @git_reference_lookup(i32** %1, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @git_reference_type(i32* %30)
  %32 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_reference_symbolic_target(i32* %36)
  %38 = load i32, i32* @ref_test_name, align 4
  %39 = call i64 @strcmp(i32 %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_reference_free(i32* %43)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_reference_type(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @git_reference_symbolic_target(i32*) #1

declare dso_local i32 @git_reference_symbolic_set_target(i32**, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
