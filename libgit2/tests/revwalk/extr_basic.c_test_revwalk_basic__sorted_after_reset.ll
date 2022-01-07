; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__sorted_after_reset.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__sorted_after_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commit_head = common dso_local global i32 0, align 4
@_walk = common dso_local global i32 0, align 4
@GIT_SORT_TIME = common dso_local global i32 0, align 4
@commit_sorting_time = common dso_local global i32 0, align 4
@commit_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_basic__sorted_after_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @revwalk_basic_setup_walk(i32* null)
  %4 = load i32, i32* @commit_head, align 4
  %5 = call i32 @git_oid_fromstr(i32* %2, i32 %4)
  %6 = load i32, i32* @_walk, align 4
  %7 = call i32 @git_revwalk_push(i32 %6, i32* %2)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_walk, align 4
  %10 = load i32, i32* @GIT_SORT_TIME, align 4
  %11 = call i32 @git_revwalk_sorting(i32 %9, i32 %10)
  %12 = load i32, i32* @_walk, align 4
  %13 = load i32, i32* @commit_sorting_time, align 4
  %14 = call i32 @test_walk_only(i32 %12, i32 %13, i32 2)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @_walk, align 4
  %17 = call i32 @git_revwalk_reset(i32 %16)
  %18 = load i32, i32* @_walk, align 4
  %19 = call i32 @git_revwalk_push(i32 %18, i32* %2)
  %20 = call i32 @cl_git_pass(i32 %19)
  br label %21

21:                                               ; preds = %25, %0
  %22 = load i32, i32* @_walk, align 4
  %23 = call i64 @git_revwalk_next(i32* %2, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %21

28:                                               ; preds = %21
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @commit_count, align 4
  %31 = call i32 @cl_assert_equal_i(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @revwalk_basic_setup_walk(i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revwalk_push(i32, i32*) #1

declare dso_local i32 @git_revwalk_sorting(i32, i32) #1

declare dso_local i32 @test_walk_only(i32, i32, i32) #1

declare dso_local i32 @git_revwalk_reset(i32) #1

declare dso_local i64 @git_revwalk_next(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
