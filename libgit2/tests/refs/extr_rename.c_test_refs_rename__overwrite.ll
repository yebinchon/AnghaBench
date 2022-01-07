; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__overwrite.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@ref_master_name = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@ref_one_name = common dso_local global i32 0, align 4
@ref_two_name = common dso_local global i32 0, align 4
@ref_one_name_new = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_rename__overwrite() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = load i32, i32* @ref_master_name, align 4
  %9 = call i32 @git_reference_lookup(i32** %1, i32 %7, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_reference_type(i32* %11)
  %13 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @cl_assert(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_reference_target(i32* %16)
  %18 = call i32 @git_oid_cpy(i32* %6, i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32, i32* @ref_one_name, align 4
  %21 = call i32 @git_reference_create(i32** %2, i32 %19, i32 %20, i32* %6, i32 0, i32* null)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32, i32* @ref_two_name, align 4
  %25 = call i32 @git_reference_create(i32** %4, i32 %23, i32 %24, i32* %6, i32 0, i32* null)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = call i32 @git_repository_refdb(i32** %5, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @git_refdb_compress(i32* %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = load i32, i32* @ref_one_name_new, align 4
  %35 = call i32 @git_reference_create(i32** %3, i32 %33, i32 %34, i32* %6, i32 0, i32* null)
  %36 = call i32 @cl_git_fail(i32 %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32, i32* @ref_one_name_new, align 4
  %39 = call i32 @git_reference_lookup(i32** %3, i32 %37, i32 %38)
  %40 = call i32 @cl_git_fail(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_reference_free(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_reference_free(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_reference_free(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @git_reference_free(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_refdb_free(i32* %49)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_type(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_repository_refdb(i32**, i32) #1

declare dso_local i32 @git_refdb_compress(i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_refdb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
