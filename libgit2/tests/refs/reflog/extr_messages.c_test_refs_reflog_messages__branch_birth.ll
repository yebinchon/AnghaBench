; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__branch_birth.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__branch_birth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"foo@example.com\00", align 1
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"refs/heads/orphan\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"message 2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_messages__branch_birth() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %10 = call i64 @reflog_entrycount(i32 %8, i8* %9)
  store i64 %10, i64* %6, align 8
  %11 = call i32 @git_signature_now(i32** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_repository_head(i32** %4, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %18 = call i32 @git_reference_peel(i32** %3, i32* %16, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_repository_set_head(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %25 = call i64 @reflog_entrycount(i32 %23, i8* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @cl_assert_equal_i(i64 %26, i64 %27)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_commit_create(i32* %2, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %30, i32* %31, i32* null, i8* %32, i32* %33, i32 0, i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @g_repo, align 4
  %37 = call i64 @reflog_entrycount(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @cl_assert_equal_i(i64 1, i64 %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %41 = call i64 @reflog_entrycount(i32 %39, i8* %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @cl_assert_equal_i(i64 %43, i64 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @git_signature_free(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_tree_free(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @git_reference_free(i32* %50)
  ret void
}

declare dso_local i64 @reflog_entrycount(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_repository_set_head(i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i64) #1

declare dso_local i32 @git_commit_create(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
