; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__reflog_is_correct.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__reflog_is_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"commit: Add a file which name should appear before the \22subdir/\22 folder while being dealt with by the treewalker\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"emeric.fermas@gmail.com\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@target = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"HEAD^{commit}\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"HEAD~^{commit}\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"reset: moving to %s\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"reset: moving to HEAD~^{commit}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_hard__reflog_is_correct() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %1, align 4
  store i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load i32, i32* @repo, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @reflog_check(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %6)
  %8 = load i32, i32* @repo, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @reflog_check(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @repo, align 4
  %12 = call i32 @git_revparse_single(i32* @target, i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @repo, align 4
  %15 = load i32, i32* @target, align 4
  %16 = load i32, i32* @GIT_RESET_HARD, align 4
  %17 = call i32 @git_reset(i32 %14, i32 %15, i32 %16, i32* null)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @reflog_check(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @repo, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @reflog_check(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @target, align 4
  %26 = call i32 @git_object_free(i32 %25)
  %27 = load i32, i32* @repo, align 4
  %28 = call i32 @git_revparse_single(i32* @target, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @target, align 4
  %31 = call i32 @git_object_id(i32 %30)
  %32 = call i32 @git_oid_tostr_s(i32 %31)
  %33 = call i32 @git_buf_printf(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @repo, align 4
  %36 = load i32, i32* @target, align 4
  %37 = load i32, i32* @GIT_RESET_HARD, align 4
  %38 = call i32 @git_reset(i32 %35, i32 %36, i32 %37, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32, i32* @repo, align 4
  %41 = call i8* @git_buf_cstr(i32* %1)
  %42 = call i32 @reflog_check(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i8* null, i8* %41)
  %43 = load i32, i32* @repo, align 4
  %44 = call i8* @git_buf_cstr(i32* %1)
  %45 = call i32 @reflog_check(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 4, i8* null, i8* %44)
  %46 = call i32 @git_buf_dispose(i32* %1)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  %47 = load i32, i32* @repo, align 4
  %48 = call i32 @git_annotated_commit_from_revspec(i32** %2, i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32, i32* @repo, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @GIT_RESET_HARD, align 4
  %53 = call i32 @git_reset_from_annotated(i32 %50, i32* %51, i32 %52, i32* null)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @repo, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @reflog_check(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 5, i8* null, i8* %56)
  %58 = load i32, i32* @repo, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @reflog_check(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 5, i8* null, i8* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @git_annotated_commit_free(i32* %61)
  ret void
}

declare dso_local i32 @reflog_check(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #1

declare dso_local i32 @git_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @git_object_free(i32) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i32) #1

declare dso_local i32 @git_oid_tostr_s(i32) #1

declare dso_local i32 @git_object_id(i32) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_annotated_commit_from_revspec(i32**, i32, i8*) #1

declare dso_local i32 @git_reset_from_annotated(i32, i32*, i32, i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
