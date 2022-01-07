; ModuleID = '/home/carl/AnghaBench/libgit2/tests/graph/extr_descendant_of.c_test_graph_descendant_of__returns_correct_result.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/graph/extr_descendant_of.c_test_graph_descendant_of__returns_correct_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@commit = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_graph_descendant_of__returns_correct_result() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @_repo, align 4
  %3 = load i32*, i32** @commit, align 8
  %4 = call i32 @git_commit_id(i32* %3)
  %5 = load i32*, i32** @commit, align 8
  %6 = call i32 @git_commit_id(i32* %5)
  %7 = call i32 @git_graph_descendant_of(i32 %2, i32 %4, i32 %6)
  %8 = call i32 @cl_assert_equal_i(i32 0, i32 %7)
  %9 = load i32*, i32** @commit, align 8
  %10 = call i32 @git_commit_nth_gen_ancestor(i32** %1, i32* %9, i32 1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @_repo, align 4
  %13 = load i32*, i32** @commit, align 8
  %14 = call i32 @git_commit_id(i32* %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_commit_id(i32* %15)
  %17 = call i32 @git_graph_descendant_of(i32 %12, i32 %14, i32 %16)
  %18 = call i32 @cl_assert_equal_i(i32 1, i32 %17)
  %19 = load i32, i32* @_repo, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_commit_id(i32* %20)
  %22 = load i32*, i32** @commit, align 8
  %23 = call i32 @git_commit_id(i32* %22)
  %24 = call i32 @git_graph_descendant_of(i32 %19, i32 %21, i32 %23)
  %25 = call i32 @cl_assert_equal_i(i32 0, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_commit_free(i32* %26)
  %28 = load i32*, i32** @commit, align 8
  %29 = call i32 @git_commit_nth_gen_ancestor(i32** %1, i32* %28, i32 3)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @_repo, align 4
  %32 = load i32*, i32** @commit, align 8
  %33 = call i32 @git_commit_id(i32* %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_commit_id(i32* %34)
  %36 = call i32 @git_graph_descendant_of(i32 %31, i32 %33, i32 %35)
  %37 = call i32 @cl_assert_equal_i(i32 1, i32 %36)
  %38 = load i32, i32* @_repo, align 4
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_commit_id(i32* %39)
  %41 = load i32*, i32** @commit, align 8
  %42 = call i32 @git_commit_id(i32* %41)
  %43 = call i32 @git_graph_descendant_of(i32 %38, i32 %40, i32 %42)
  %44 = call i32 @cl_assert_equal_i(i32 0, i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_commit_free(i32* %45)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_graph_descendant_of(i32, i32, i32) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_nth_gen_ancestor(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
