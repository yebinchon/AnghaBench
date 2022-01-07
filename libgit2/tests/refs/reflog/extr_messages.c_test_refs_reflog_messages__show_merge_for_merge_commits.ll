; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__show_merge_for_merge_commits.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__show_merge_for_merge_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_commit = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"alice\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"alice@example.com\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"refs/heads/test\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Merge commit\00", align 1
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"commit (merge): Merge commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_messages__show_merge_for_merge_commits() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32*], align 16
  %8 = alloca i32*, align 8
  %9 = call i32 @git_signature_now(i32** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_reference_name_to_id(i32* %1, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i32 @git_reference_name_to_id(i32* %2, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_commit_lookup(i32** %4, i32 %17, i32* %1)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_commit_lookup(i32** %5, i32 %20, i32* %2)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  store i32* %23, i32** %24, align 16
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  store i32* %25, i32** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @git_commit_tree(i32** %8, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %35 = bitcast i32** %34 to %struct.git_commit**
  %36 = call i32 @git_commit_create(i32* %3, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %31, i32* %32, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %33, i32 2, %struct.git_commit** %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i32, i32* @GIT_HEAD_FILE, align 4
  %40 = call i32 @git_oid_tostr_s(i32* %3)
  %41 = call i32 @cl_reflog_check_entry(i32 %38, i32 %39, i32 0, i32* null, i32 %40, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @git_tree_free(i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @git_commit_free(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @git_commit_free(i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @git_signature_free(i32* %48)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_commit_create(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32, %struct.git_commit**) #1

declare dso_local i32 @cl_reflog_check_entry(i32, i32, i32, i32*, i32, i32*, i8*) #1

declare dso_local i32 @git_oid_tostr_s(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
