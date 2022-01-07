; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_hidecb.c_test_revwalk_hidecb__unset_cb_before_walk.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_hidecb.c_test_revwalk_hidecb__unset_cb_before_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@hide_every_commit_cb = common dso_local global i32* null, align 8
@_head_id = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_hidecb__unset_cb_before_walk() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @_repo, align 4
  %6 = call i32 @git_revwalk_new(i32** %1, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = load i32*, i32** @hide_every_commit_cb, align 8
  %10 = call i32 @git_revwalk_add_hide_cb(i32* %8, i32* %9, i32* null)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_revwalk_add_hide_cb(i32* %12, i32* null, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_revwalk_push(i32* %15, i32* @_head_id)
  %17 = call i32 @cl_git_pass(i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %22, %0
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_revwalk_next(i32* %2, i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %18

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @cl_assert_equal_i(i32 %26, i32 6)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GIT_ITEROVER, align 4
  %30 = call i32 @cl_assert_equal_i(i32 %28, i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_revwalk_free(i32* %31)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revwalk_new(i32**, i32) #1

declare dso_local i32 @git_revwalk_add_hide_cb(i32*, i32*, i32*) #1

declare dso_local i32 @git_revwalk_push(i32*, i32*) #1

declare dso_local i32 @git_revwalk_next(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_revwalk_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
