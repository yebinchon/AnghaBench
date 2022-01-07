; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_races.c_test_refs_races__switch_symbolic_to_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_races.c_test_refs_races__switch_symbolic_to_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commit_id = common dso_local global i32 0, align 4
@other_commit_id = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_EMODIFIED = common dso_local global i32 0, align 4
@refname = common dso_local global i32 0, align 4
@other_refname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_races__switch_symbolic_to_oid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @commit_id, align 4
  %7 = call i32 @git_oid_fromstr(i32* %4, i32 %6)
  %8 = load i32, i32* @other_commit_id, align 4
  %9 = call i32 @git_oid_fromstr(i32* %5, i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_reference_lookup(i32** %1, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_reference_create(i32** %2, i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4, i32 1, i32* null)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @GIT_EMODIFIED, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_reference_delete(i32* %17)
  %19 = call i32 @cl_git_fail_with(i32 %16, i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_reference_free(i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_reference_free(i32* %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = load i32, i32* @refname, align 4
  %26 = call i32 @git_reference_symbolic_create(i32** %1, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25, i32 1, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @git_reference_lookup(i32** %1, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = call i32 @git_reference_create(i32** %2, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4, i32 1, i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @GIT_EMODIFIED, align 4
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @other_refname, align 4
  %39 = call i32 @git_reference_symbolic_set_target(i32** %3, i32* %37, i32 %38, i32* null)
  %40 = call i32 @cl_git_fail_with(i32 %36, i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_reference_free(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_reference_free(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_reference_free(i32* %45)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_reference_delete(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reference_symbolic_create(i32**, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_reference_symbolic_set_target(i32**, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
