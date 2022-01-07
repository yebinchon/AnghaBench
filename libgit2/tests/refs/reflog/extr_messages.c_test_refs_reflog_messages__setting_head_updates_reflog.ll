; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__setting_head_updates_reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__setting_head_updates_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"foo@example.com\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"refs/heads/haacked\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"refs/heads/unborn\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tags/test\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"refs/tags/test\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"refs/remotes/test/master\00", align 1
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"checkout: moving from master to haacked\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"tags/test^{commit}\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"checkout: moving from unborn to e90810b8df3e80c413d903f631643c716887138d\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"checkout: moving from e90810b8df3e80c413d903f631643c716887138d to haacked\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"checkout: moving from haacked to test\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"checkout: moving from e90810b8df3e80c413d903f631643c716887138d to test/master\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"haacked~0\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"checkout: moving from be3563ae3f795b2b4353bcce3a527ad0a4f7f644 to haacked~0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_messages__setting_head_updates_reflog() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @git_signature_now(i32** %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_set_head(i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_repository_set_head(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_revparse_single(i32** %1, i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_object_id(i32* %16)
  %18 = call i32 @git_repository_set_head_detached(i32 %15, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_repository_set_head(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_repository_set_head(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = call i32 @git_repository_set_head(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32, i32* @GIT_HEAD_FILE, align 4
  %31 = call i32 @cl_reflog_check_entry(i32 %29, i32 %30, i32 4, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i32, i32* @g_repo, align 4
  %33 = load i32, i32* @GIT_HEAD_FILE, align 4
  %34 = call i32 @cl_reflog_check_entry(i32 %32, i32 %33, i32 3, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0))
  %35 = load i32, i32* @g_repo, align 4
  %36 = load i32, i32* @GIT_HEAD_FILE, align 4
  %37 = call i32 @cl_reflog_check_entry(i32 %35, i32 %36, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0))
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i32, i32* @GIT_HEAD_FILE, align 4
  %40 = call i32 @cl_reflog_check_entry(i32 %38, i32 %39, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %41 = load i32, i32* @g_repo, align 4
  %42 = load i32, i32* @GIT_HEAD_FILE, align 4
  %43 = call i32 @cl_reflog_check_entry(i32 %41, i32 %42, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0))
  %44 = load i32, i32* @g_repo, align 4
  %45 = call i32 @git_annotated_commit_from_revspec(i32** %3, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_repository_set_head_detached_from_annotated(i32 %47, i32* %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32, i32* @g_repo, align 4
  %52 = load i32, i32* @GIT_HEAD_FILE, align 4
  %53 = call i32 @cl_reflog_check_entry(i32 %51, i32 %52, i32 0, i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i64 0, i64 0))
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @git_annotated_commit_free(i32* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @git_object_free(i32* %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @git_signature_free(i32* %58)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_repository_set_head(i32, i8*) #1

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #1

declare dso_local i32 @git_repository_set_head_detached(i32, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @cl_reflog_check_entry(i32, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @git_annotated_commit_from_revspec(i32**, i32, i8*) #1

declare dso_local i32 @git_repository_set_head_detached_from_annotated(i32, i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
