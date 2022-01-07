; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__mode_change_is_force_updated.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__mode_change_is_force_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"testrepo/README\00", align 1
@g_opts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"README\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__mode_change_is_force_updated() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 (...) @cl_is_chmod_supported()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @clar__skip()
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @assert_on_branch(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_repository_index(i32** %1, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i32 @git_repository_head(i32** %2, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %19 = call i32 @git_reference_peel(i32** %3, i32* %17, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @GIT_RESET_HARD, align 4
  %24 = call i32 @git_reset(i32 %21, i32* %22, i32 %23, i32* null)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = call i32 @assert_status_entrycount(i32 %26, i32 0)
  %28 = call i32 @p_chmod(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %29 = call i32 @cl_must_pass(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @assert_status_entrycount(i32 %30, i32 1)
  %32 = load i32, i32* @g_repo, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_checkout_tree(i32 %32, i32* %33, i32* @g_opts)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @g_repo, align 4
  %37 = call i32 @assert_status_entrycount(i32 %36, i32 0)
  %38 = call i32 @p_chmod(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %39 = call i32 @cl_must_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_index_add_bypath(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @cl_must_pass(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_index_write(i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @g_repo, align 4
  %47 = call i32 @assert_status_entrycount(i32 %46, i32 1)
  %48 = load i32, i32* @g_repo, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @git_checkout_tree(i32 %48, i32* %49, i32* @g_opts)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_index_write(i32* %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @g_repo, align 4
  %56 = call i32 @assert_status_entrycount(i32 %55, i32 0)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_object_free(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @git_reference_free(i32* %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @git_index_free(i32* %61)
  ret void
}

declare dso_local i32 @cl_is_chmod_supported(...) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @assert_on_branch(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #1

declare dso_local i32 @assert_status_entrycount(i32, i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_chmod(i8*, i32) #1

declare dso_local i32 @git_checkout_tree(i32, i32*, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
