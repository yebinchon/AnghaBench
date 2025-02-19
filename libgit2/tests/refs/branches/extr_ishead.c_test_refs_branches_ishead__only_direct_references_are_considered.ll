; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_ishead.c_test_refs_branches_ishead__only_direct_references_are_considered.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_ishead.c_test_refs_branches_ishead__only_direct_references_are_considered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/heads/linked\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"refs/heads/super\00", align 1
@GIT_HEAD_FILE = common dso_local global i8* null, align 8
@branch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_ishead__only_direct_references_are_considered() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @repo, align 4
  %5 = call i32 @git_reference_symbolic_create(i32** %1, i32 %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_reference_symbolic_create(i32** %2, i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @repo, align 4
  %11 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %12 = call i32 @git_reference_symbolic_create(i32** %3, i32 %10, i8* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 1, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_branch_is_head(i32* %14)
  %16 = call i32 @cl_assert_equal_i(i32 0, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_branch_is_head(i32* %17)
  %19 = call i32 @cl_assert_equal_i(i32 0, i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = call i32 @git_repository_head(i32* @branch, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @branch, align 4
  %24 = call i32 @git_reference_name(i32 %23)
  %25 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_reference_free(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_reference_free(i32* %30)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_symbolic_create(i32**, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_branch_is_head(i32*) #1

declare dso_local i32 @git_repository_head(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reference_name(i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
