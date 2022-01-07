; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__including_untracked_without_any_untracked_file_creates_an_empty_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__including_untracked_without_any_untracked_file_creates_an_empty_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"stash/when\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"just.ignore\00", align 1
@GIT_STATUS_IGNORED = common dso_local global i32 0, align 4
@stash_tip_oid = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_STASH_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"stash^3^{tree}\00", align 1
@EMPTY_TREE = common dso_local global i32 0, align 4
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_save__including_untracked_without_any_untracked_file_creates_an_empty_tree() #0 {
  %1 = call i32 @p_unlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @cl_must_pass(i32 %1)
  %3 = load i32, i32* @repo, align 4
  %4 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %5 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @assert_status(i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @repo, align 4
  %9 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %10 = call i32 @assert_status(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @repo, align 4
  %12 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %13 = call i32 @assert_status(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @repo, align 4
  %15 = load i32, i32* @GIT_ENOTFOUND, align 4
  %16 = call i32 @assert_status(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = load i32, i32* @GIT_STATUS_IGNORED, align 4
  %19 = call i32 @assert_status(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32, i32* @signature, align 4
  %22 = load i32, i32* @GIT_STASH_INCLUDE_UNTRACKED, align 4
  %23 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %20, i32 %21, i32* null, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @EMPTY_TREE, align 4
  %26 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %27 = call i32 @assert_object_oid(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_unlink(i8*) #1

declare dso_local i32 @assert_status(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @assert_object_oid(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
