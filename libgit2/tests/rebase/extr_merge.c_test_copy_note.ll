; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_copy_note.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_copy_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"refs/heads/gravy\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/heads/veal\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"refs/notes/test\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"This is a commit note.\00", align 1
@signature = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_copy_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copy_note(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %14, align 8
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_reference_lookup(i32** %6, i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_reference_lookup(i32** %7, i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @git_annotated_commit_from_ref(i32** %8, i32 %22, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @repo, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @git_annotated_commit_from_ref(i32** %9, i32 %26, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %32 = call i32 @git_reference_peel(i32** %10, i32* %30, i32 %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @repo, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @git_commit_author(i32* %35)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @git_commit_committer(i32* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @git_commit_id(i32* %39)
  %41 = call i32 @git_note_create(i32* %12, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %38, i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @git_rebase_init(i32** %5, i32 %43, i32* %44, i32* %45, i32* null, i32* %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_rebase_next(i32** %11, i32* %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @signature, align 4
  %54 = call i32 @git_rebase_commit(i32* %13, i32* %52, i32* null, i32 %53, i32* null, i32* null)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @signature, align 4
  %58 = call i32 @git_rebase_finish(i32* %56, i32 %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  %61 = load i32, i32* @repo, align 4
  %62 = call i32 @git_repository_state(i32 %61)
  %63 = call i32 @cl_assert_equal_i(i32 %60, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %2
  %67 = load i32, i32* @repo, align 4
  %68 = call i32 @git_note_read(i32** %14, i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @git_note_message(i32* %70)
  %72 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %80

73:                                               ; preds = %2
  %74 = load i32, i32* @repo, align 4
  %75 = call i32 @git_note_read(i32** %14, i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  store i32 %75, i32* %15, align 4
  %76 = call i32 @cl_git_fail(i32 %75)
  %77 = load i32, i32* @GIT_ENOTFOUND, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @cl_assert_equal_i(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %66
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @git_note_free(i32* %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @git_commit_free(i32* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @git_annotated_commit_free(i32* %85)
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @git_annotated_commit_free(i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @git_reference_free(i32* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @git_reference_free(i32* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @git_rebase_free(i32* %93)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_note_create(i32*, i32, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @git_commit_author(i32*) #1

declare dso_local i32 @git_commit_committer(i32*) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_rebase_next(i32**, i32*) #1

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @git_rebase_finish(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_state(i32) #1

declare dso_local i32 @git_note_read(i32**, i32, i8*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_note_message(i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_note_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
