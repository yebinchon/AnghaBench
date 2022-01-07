; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_analysis.c_test_merge_analysis__no_fastforward_with_config_ffonly.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_analysis.c_test_merge_analysis__no_fastforward_with_config_ffonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"merge.ff\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@NOFASTFORWARD_BRANCH = common dso_local global i32 0, align 4
@GIT_MERGE_ANALYSIS_NORMAL = common dso_local global i32 0, align 4
@GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_analysis__no_fastforward_with_config_ffonly() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @repo, align 4
  %5 = call i32 @git_repository_config(i32** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_config_set_string(i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @NOFASTFORWARD_BRANCH, align 4
  %11 = call i32 @analysis_from_branch(i32* %2, i32* %3, i32* null, i32 %10)
  %12 = load i32, i32* @GIT_MERGE_ANALYSIS_NORMAL, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @cl_assert_equal_i(i32 %12, i32 %13)
  %15 = load i32, i32* @GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @cl_assert_equal_i(i32 %15, i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_config_free(i32* %20)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config(i32**, i32) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @analysis_from_branch(i32*, i32*, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
