; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_hidecb.c_test_revwalk_hidecb__test_payload.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_hidecb.c_test_revwalk_hidecb__test_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@_head_id = common dso_local global i32 0, align 4
@GIT_SORT_TOPOLOGICAL = common dso_local global i32 0, align 4
@hide_commit_use_payload_cb = common dso_local global i32 0, align 4
@commit_ids = common dso_local global i32* null, align 8
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_hidecb__test_payload() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @_repo, align 4
  %6 = call i32 @git_revwalk_new(i32** %1, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_revwalk_push(i32* %8, i32* @_head_id)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* @GIT_SORT_TOPOLOGICAL, align 4
  %13 = call i32 @git_revwalk_sorting(i32* %11, i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @hide_commit_use_payload_cb, align 4
  %16 = load i32*, i32** @commit_ids, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  %18 = call i32 @git_revwalk_add_hide_cb(i32* %14, i32 %15, i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %24, %0
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_revwalk_next(i32* %2, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** @commit_ids, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @cl_assert_equal_oid(i32* %28, i32* %2)
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %20

32:                                               ; preds = %20
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @cl_assert_equal_i(i32 %33, i32 4)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @GIT_ITEROVER, align 4
  %37 = call i32 @cl_assert_equal_i(i32 %35, i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_revwalk_free(i32* %38)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revwalk_new(i32**, i32) #1

declare dso_local i32 @git_revwalk_push(i32*, i32*) #1

declare dso_local i32 @git_revwalk_sorting(i32*, i32) #1

declare dso_local i32 @git_revwalk_add_hide_cb(i32*, i32, i32*) #1

declare dso_local i32 @git_revwalk_next(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_revwalk_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
