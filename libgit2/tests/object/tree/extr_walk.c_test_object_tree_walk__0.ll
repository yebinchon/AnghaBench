; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_walk.c_test_object_tree_walk__0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_walk.c_test_object_tree_walk__0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree_oid = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_TREEWALK_PRE = common dso_local global i32 0, align 4
@treewalk_count_cb = common dso_local global i32 0, align 4
@GIT_TREEWALK_POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_walk__0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @tree_oid, align 4
  %5 = call i32 @git_oid_fromstr(i32* %1, i32 %4)
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_tree_lookup(i32** %2, i32 %6, i32* %1)
  %8 = call i32 @cl_git_pass(i32 %7)
  store i32 0, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @GIT_TREEWALK_PRE, align 4
  %11 = load i32, i32* @treewalk_count_cb, align 4
  %12 = call i32 @git_tree_walk(i32* %9, i32 %10, i32 %11, i32* %3)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @cl_assert_equal_i(i32 3, i32 %14)
  store i32 0, i32* %3, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @GIT_TREEWALK_POST, align 4
  %18 = load i32, i32* @treewalk_count_cb, align 4
  %19 = call i32 @git_tree_walk(i32* %16, i32 %17, i32 %18, i32* %3)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @cl_assert_equal_i(i32 3, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_tree_free(i32* %23)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_tree_walk(i32*, i32, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
