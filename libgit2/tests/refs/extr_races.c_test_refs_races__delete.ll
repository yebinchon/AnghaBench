; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_races.c_test_refs_races__delete.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_races.c_test_refs_races__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commit_id = common dso_local global i32 0, align 4
@other_commit_id = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@refname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@other_refname = common dso_local global i32 0, align 4
@GIT_EMODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_races__delete() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @commit_id, align 4
  %6 = call i32 @git_oid_fromstr(i32* %3, i32 %5)
  %7 = load i32, i32* @other_commit_id, align 4
  %8 = call i32 @git_oid_fromstr(i32* %4, i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i8*, i8** @refname, align 8
  %11 = call i32 @git_reference_lookup(i32** %1, i32 %9, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_reference_delete(i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_reference_free(i32* %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_reference_lookup(i32** %1, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32, i32* @other_refname, align 4
  %23 = load i8*, i8** @refname, align 8
  %24 = call i32 @git_reference_symbolic_create_matching(i32** %2, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22, i32 1, i32* null, i8* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @GIT_EMODIFIED, align 4
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_reference_delete(i32* %27)
  %29 = call i32 @cl_git_fail_with(i32 %26, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_reference_free(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_reference_free(i32* %32)
  %34 = load i32, i32* @g_repo, align 4
  %35 = load i8*, i8** @refname, align 8
  %36 = call i32 @git_reference_create(i32** %1, i32 %34, i8* %35, i32* %3, i32 1, i32* null)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_reference_free(i32* %38)
  %40 = load i32, i32* @g_repo, align 4
  %41 = load i8*, i8** @refname, align 8
  %42 = call i32 @git_reference_lookup(i32** %1, i32 %40, i8* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = load i8*, i8** @refname, align 8
  %46 = call i32 @git_reference_create_matching(i32** %2, i32 %44, i8* %45, i32* %4, i32 1, i32* %3, i32* null)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* @GIT_EMODIFIED, align 4
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_reference_delete(i32* %49)
  %51 = call i32 @cl_git_fail_with(i32 %48, i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_reference_free(i32* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @git_reference_free(i32* %54)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_reference_delete(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reference_symbolic_create_matching(i32**, i32, i8*, i32, i32, i32*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_create_matching(i32**, i32, i8*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
