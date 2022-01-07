; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_mergebase.c_test_revwalk_mergebase__no_common_ancestor_returns_ENOTFOUND.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_mergebase.c_test_revwalk_mergebase__no_common_ancestor_returns_ENOTFOUND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"763d71aadf09a7951596c9746c024e7eece7c7af\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"e90810b8df3e80c413d903f631643c716887138d\00", align 1
@_repo = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_mergebase__no_common_ancestor_returns_ENOTFOUND() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @git_merge_base(i32* %1, i32 %11, i32* %2, i32* %3)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @cl_git_fail(i32 %13)
  %15 = load i32, i32* @GIT_ENOTFOUND, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cl_assert_equal_i(i32 %15, i32 %16)
  %18 = load i32, i32* @_repo, align 4
  %19 = call i32 @git_graph_ahead_behind(i64* %4, i64* %5, i32 %18, i32* %2, i32* %3)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @cl_assert_equal_sz(i32 4, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @cl_assert_equal_sz(i32 2, i64 %23)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_merge_base(i32*, i32, i32*, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_graph_ahead_behind(i64*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
