; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_test_reset_soft__resetting_to_a_tag_sets_the_Head_to_the_peeled_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_test_reset_soft__resetting_to_a_tag_sets_the_Head_to_the_peeled_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"b25fa35\00", align 1
@GIT_RESET_SOFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@KNOWN_COMMIT_IN_BARE_REPO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_soft__resetting_to_a_tag_sets_the_Head_to_the_peeled_commit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @repo, align 4
  %3 = call i32 @git_revparse_single(i32* @target, i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @repo, align 4
  %6 = load i32, i32* @target, align 4
  %7 = load i32, i32* @GIT_RESET_SOFT, align 4
  %8 = call i32 @git_reset(i32 %5, i32 %6, i32 %7, i32* null)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @git_repository_head_detached(i32 %10)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_reference_name_to_id(i32* %1, i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @KNOWN_COMMIT_IN_BARE_REPO, align 4
  %19 = call i32 @git_oid_streq(i32* %1, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #1

declare dso_local i32 @git_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_head_detached(i32) #1

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #1

declare dso_local i32 @git_oid_streq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
