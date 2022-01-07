; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__orphan_branch_does_not_count.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__orphan_branch_does_not_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c"checkout: moving from master to e90810b8df3e80c413d903f631643c716887138d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"e90810b8df3e80c413d903f631643c716887138d\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"refs/heads/orphan\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"checkout: moving from orphan to haacked\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"refs/heads/haacked\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"0000000000000000000000000000000000000000\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"258f0e2a959a364e40ed6603d5d44fbb24765b10\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_messages__orphan_branch_does_not_count() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_repository_set_head_detached(i32 %4, i32* %1)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @g_repo, align 4
  %8 = load i32, i32* @GIT_HEAD_FILE, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @cl_reflog_check_entry(i32 %7, i32 %8, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_repository_set_head(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32, i32* @GIT_HEAD_FILE, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @cl_reflog_check_entry(i32 %14, i32 %15, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* %16)
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_repository_set_head(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32, i32* @GIT_HEAD_FILE, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @cl_reflog_check_entry(i32 %21, i32 %22, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* %23)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_set_head_detached(i32, i32*) #1

declare dso_local i32 @cl_reflog_check_entry(i32, i32, i32, i8*, i8*, i32*, i8*) #1

declare dso_local i32 @git_repository_set_head(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
