; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_mergebase.c_test_revwalk_mergebase__two_way_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_mergebase.c_test_revwalk_mergebase__two_way_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"9b219343610c88a1187c996d0dc58330b55cee28\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"a953a018c5b10b20c86e69fef55ebc8ad4c5a417\00", align 1
@_repo2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_mergebase__two_way_merge() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_repo2, align 4
  %10 = call i32 @git_graph_ahead_behind(i64* %3, i64* %4, i32 %9, i32* %1, i32* %2)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @cl_assert_equal_sz(i64 %12, i32 8)
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @cl_assert_equal_sz(i64 %14, i32 2)
  %16 = load i32, i32* @_repo2, align 4
  %17 = call i32 @git_graph_ahead_behind(i64* %3, i64* %4, i32 %16, i32* %2, i32* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @cl_assert_equal_sz(i64 %19, i32 2)
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @cl_assert_equal_sz(i64 %21, i32 8)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_graph_ahead_behind(i64*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
