; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_test_reset_soft__reflog_is_correct.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_test_reset_soft__reflog_is_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"checkout: moving from br2 to master\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"commit: checking in\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"yoram.harmelin@gmail.com\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@target = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"HEAD^{commit}\00", align 1
@GIT_RESET_SOFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"reset: moving to be3563ae3f795b2b4353bcce3a527ad0a4f7f644\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"HEAD~^{commit}\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"reset: moving to HEAD~^{commit}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_soft__reflog_is_correct() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* @repo, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @reflog_check(i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* @repo, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @reflog_check(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @git_revparse_single(i32* @target, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @repo, align 4
  %14 = load i32, i32* @target, align 4
  %15 = load i32, i32* @GIT_RESET_SOFT, align 4
  %16 = call i32 @git_reset(i32 %13, i32 %14, i32 %15, i32* null)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @reflog_check(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @repo, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @reflog_check(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @target, align 4
  %25 = call i32 @git_object_free(i32 %24)
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  %26 = load i32, i32* @repo, align 4
  %27 = call i32 @git_revparse_single(i32* @target, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @repo, align 4
  %30 = load i32, i32* @target, align 4
  %31 = load i32, i32* @GIT_RESET_SOFT, align 4
  %32 = call i32 @git_reset(i32 %29, i32 %30, i32 %31, i32* null)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @repo, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @reflog_check(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @repo, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @reflog_check(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 3, i8* null, i8* %38)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  %40 = load i32, i32* @repo, align 4
  %41 = call i32 @git_annotated_commit_from_revspec(i32** %1, i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @GIT_RESET_SOFT, align 4
  %46 = call i32 @git_reset_from_annotated(i32 %43, i32* %44, i32 %45, i32* null)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* @repo, align 4
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @reflog_check(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @repo, align 4
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @reflog_check(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 4, i8* null, i8* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_annotated_commit_free(i32* %54)
  ret void
}

declare dso_local i32 @reflog_check(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #1

declare dso_local i32 @git_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @git_object_free(i32) #1

declare dso_local i32 @git_annotated_commit_from_revspec(i32**, i32, i8*) #1

declare dso_local i32 @git_reset_from_annotated(i32, i32*, i32, i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
