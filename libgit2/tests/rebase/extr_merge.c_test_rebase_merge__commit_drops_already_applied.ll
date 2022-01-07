; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__commit_drops_already_applied.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__commit_drops_already_applied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"refs/heads/green_pea\00", align 1
@signature = common dso_local global i32 0, align 4
@GIT_EAPPLIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"8d1f13f93c4995760ac07d129246ac1ff64c0be9 2ac4fb7b74c1287f6c792acad759e1ec01e18dae\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"rebase/.git/rebase-merge/rewritten\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__commit_drops_already_applied() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_reference_lookup(i32** %2, i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_reference_lookup(i32** %3, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %15, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %19, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @git_rebase_init(i32** %1, i32 %23, i32* %24, i32* %25, i32* null, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_rebase_next(i32** %6, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @signature, align 4
  %33 = call i32 @git_rebase_commit(i32* %7, i32* %31, i32* null, i32 %32, i32* null, i32* null)
  store i32 %33, i32* %8, align 4
  %34 = call i32 @cl_git_fail(i32 %33)
  %35 = load i32, i32* @GIT_EAPPLIED, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @cl_assert_equal_i(i32 %35, i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_rebase_next(i32** %6, i32* %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @signature, align 4
  %43 = call i32 @git_rebase_commit(i32* %7, i32* %41, i32* null, i32 %42, i32* null, i32* null)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_annotated_commit_free(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @git_annotated_commit_free(i32* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_reference_free(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @git_reference_free(i32* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_rebase_free(i32* %54)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_rebase_next(i32**, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_file(i8*, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
