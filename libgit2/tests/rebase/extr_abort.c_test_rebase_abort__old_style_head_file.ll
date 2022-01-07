; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_abort.c_test_rebase_abort__old_style_head_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_abort.c_test_rebase_abort__old_style_head_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Rebaser\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"rebaser@example.com\00", align 1
@GIT_REPOSITORY_STATE_REBASE_MERGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"rebase-merge/.git/rebase-merge/orig-head\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"rebase-merge/.git/rebase-merge/head\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_abort__old_style_head_file() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_reference_lookup(i32** %2, i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @git_reference_lookup(i32** %3, i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @repo, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %13, i32* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @git_annotated_commit_from_ref(i32** %6, i32 %17, i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = call i32 @git_signature_new(i32** %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1404157834, i32 -400)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @git_rebase_init(i32** %1, i32 %23, i32* %24, i32* null, i32* %25, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @GIT_REPOSITORY_STATE_REBASE_MERGE, align 4
  %29 = load i32, i32* @repo, align 4
  %30 = call i32 @git_repository_state(i32 %29)
  %31 = call i32 @cl_assert_equal_i(i32 %28, i32 %30)
  %32 = call i32 @p_rename(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @test_abort(i32* %33, i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @git_signature_free(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_annotated_commit_free(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @git_annotated_commit_free(i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_reference_free(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_reference_free(i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @git_rebase_free(i32* %46)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i32, i32) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_state(i32) #1

declare dso_local i32 @p_rename(i8*, i8*) #1

declare dso_local i32 @test_abort(i32*, i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
