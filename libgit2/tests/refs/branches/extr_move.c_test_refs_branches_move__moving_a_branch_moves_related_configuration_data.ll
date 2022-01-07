; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_move.c_test_refs_branches_move__moving_a_branch_moves_related_configuration_data.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_move.c_test_refs_branches_move__moving_a_branch_moves_related_configuration_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"track-local\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"branch.track-local.remote\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"branch.track-local.merge\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"branch.moved.remote\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"branch.moved.merge\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"moved\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_move__moving_a_branch_moves_related_configuration_data() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @repo, align 4
  %4 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %5 = call i32 @git_branch_lookup(i32** %1, i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @assert_config_entry_existence(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @assert_config_entry_existence(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %11 = load i32, i32* @repo, align 4
  %12 = call i32 @assert_config_entry_existence(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %13 = load i32, i32* @repo, align 4
  %14 = call i32 @assert_config_entry_existence(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_branch_move(i32** %2, i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_reference_free(i32* %18)
  %20 = load i32, i32* @repo, align 4
  %21 = call i32 @assert_config_entry_existence(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %22 = load i32, i32* @repo, align 4
  %23 = call i32 @assert_config_entry_existence(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %24 = load i32, i32* @repo, align 4
  %25 = call i32 @assert_config_entry_existence(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %26 = load i32, i32* @repo, align 4
  %27 = call i32 @assert_config_entry_existence(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_branch_lookup(i32**, i32, i8*, i32) #1

declare dso_local i32 @assert_config_entry_existence(i32, i8*, i32) #1

declare dso_local i32 @git_branch_move(i32**, i32*, i8*, i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
