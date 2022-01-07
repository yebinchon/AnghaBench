; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_mergebase.c_test_revwalk_mergebase__merged_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_mergebase.c_test_revwalk_mergebase__merged_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"9fd738e8f7967c078dceed8190330fc8648ee56a\00", align 1
@_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_mergebase__merged_branch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @_repo, align 4
  %14 = call i32 @git_merge_base(i32* %1, i32 %13, i32* %2, i32* %3)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @cl_assert_equal_oid(i32* %4, i32* %1)
  %17 = load i32, i32* @_repo, align 4
  %18 = call i32 @git_merge_base(i32* %1, i32 %17, i32* %3, i32* %2)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @cl_assert_equal_oid(i32* %4, i32* %1)
  %21 = load i32, i32* @_repo, align 4
  %22 = call i32 @git_graph_ahead_behind(i64* %5, i64* %6, i32 %21, i32* %2, i32* %3)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @cl_assert_equal_sz(i64 %24, i32 3)
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @cl_assert_equal_sz(i64 %26, i32 0)
  %28 = load i32, i32* @_repo, align 4
  %29 = call i32 @git_graph_ahead_behind(i64* %5, i64* %6, i32 %28, i32* %3, i32* %2)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @cl_assert_equal_sz(i64 %31, i32 0)
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @cl_assert_equal_sz(i64 %33, i32 3)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_merge_base(i32*, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @git_graph_ahead_behind(i64*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
