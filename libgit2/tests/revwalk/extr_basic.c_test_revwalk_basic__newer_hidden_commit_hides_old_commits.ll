; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__newer_hidden_commit_hides_old_commits.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__newer_hidden_commit_hides_old_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"revwalk.git\00", align 1
@_walk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"refs/heads/D\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"refs/heads/B\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"refs/heads/A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"refs/heads/E\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"b82cee5004151ae0c4f82b69fb71b87477664b6f\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"790ba0facf6fd103699a5c40cd19dad277ff49cd\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_basic__newer_hidden_commit_hides_old_commits() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @revwalk_basic_setup_walk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @_walk, align 4
  %4 = call i32 @git_revwalk_push_ref(i32 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @_walk, align 4
  %7 = call i32 @git_revwalk_hide_ref(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_walk, align 4
  %10 = call i32 @git_revwalk_hide_ref(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @_walk, align 4
  %13 = call i32 @git_revwalk_hide_ref(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @_walk, align 4
  %16 = call i32 @git_revwalk_next(i32* %1, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32, i32* @_walk, align 4
  %21 = call i32 @git_revwalk_next(i32* %1, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_oid_streq(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32, i32* @GIT_ITEROVER, align 4
  %26 = load i32, i32* @_walk, align 4
  %27 = call i32 @git_revwalk_next(i32* %1, i32 %26)
  %28 = call i32 @cl_git_fail_with(i32 %25, i32 %27)
  ret void
}

declare dso_local i32 @revwalk_basic_setup_walk(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revwalk_push_ref(i32, i8*) #1

declare dso_local i32 @git_revwalk_hide_ref(i32, i8*) #1

declare dso_local i32 @git_revwalk_next(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_streq(i32*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
