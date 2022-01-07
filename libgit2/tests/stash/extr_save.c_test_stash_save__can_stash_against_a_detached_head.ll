; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__can_stash_against_a_detached_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__can_stash_against_a_detached_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@stash_tip_oid = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_STASH_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"refs/stash^2\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"index on (no branch): \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"refs/stash\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"WIP on (no branch): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_save__can_stash_against_a_detached_head() #0 {
  %1 = load i32, i32* @repo, align 4
  %2 = call i32 @git_repository_detach_head(i32 %1)
  %3 = load i32, i32* @repo, align 4
  %4 = load i32, i32* @signature, align 4
  %5 = load i32, i32* @GIT_STASH_DEFAULT, align 4
  %6 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %3, i32 %4, i32* null, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @assert_commit_message_contains(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @assert_commit_message_contains(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @git_repository_detach_head(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @assert_commit_message_contains(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
