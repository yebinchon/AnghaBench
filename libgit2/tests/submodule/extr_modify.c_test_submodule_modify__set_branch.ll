; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_modify.c_test_submodule_modify__set_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_modify.c_test_submodule_modify__set_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@SM_LIBGIT2_BRANCH = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_modify__set_branch() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @g_repo, align 4
  %3 = call i32 @git_submodule_lookup(i32** %1, i32 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32* @git_submodule_branch(i32* %5)
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_submodule_free(i32* %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i32*, i32** @SM_LIBGIT2_BRANCH, align 8
  %14 = call i32 @git_submodule_set_branch(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_submodule_lookup(i32** %1, i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** @SM_LIBGIT2_BRANCH, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @git_submodule_branch(i32* %20)
  %22 = call i32 @cl_assert_equal_s(i32* %19, i32* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_submodule_free(i32* %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = call i32 @git_submodule_set_branch(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = call i32 @git_submodule_lookup(i32** %1, i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32* @git_submodule_branch(i32* %31)
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_submodule_free(i32* %36)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_submodule_branch(i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

declare dso_local i32 @git_submodule_set_branch(i32, i8*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
