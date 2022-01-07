; ModuleID = '/home/carl/AnghaBench/libgit2/tests/graph/extr_ahead_behind.c_test_graph_ahead_behind__returns_correct_result.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/graph/extr_ahead_behind.c_test_graph_ahead_behind__returns_correct_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"e90810b8df3e80c413d903f631643c716887138d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"be3563ae3f795b2b4353bcce3a527ad0a4f7f644\00", align 1
@ahead = common dso_local global i32 0, align 4
@behind = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@commit = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_graph_ahead_behind__returns_correct_result() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @_repo, align 4
  %9 = call i32 @git_graph_ahead_behind(i32* @ahead, i32* @behind, i32 %8, i32* %1, i32* %2)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @ahead, align 4
  %12 = call i32 @cl_assert_equal_sz(i32 2, i32 %11)
  %13 = load i32, i32* @behind, align 4
  %14 = call i32 @cl_assert_equal_sz(i32 6, i32 %13)
  %15 = load i32, i32* @_repo, align 4
  %16 = load i32*, i32** @commit, align 8
  %17 = call i32* @git_commit_id(i32* %16)
  %18 = load i32*, i32** @commit, align 8
  %19 = call i32* @git_commit_id(i32* %18)
  %20 = call i32 @git_graph_ahead_behind(i32* @ahead, i32* @behind, i32 %15, i32* %17, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @ahead, align 4
  %23 = load i32, i32* @behind, align 4
  %24 = call i32 @cl_assert_equal_sz(i32 %22, i32 %23)
  %25 = load i32*, i32** @commit, align 8
  %26 = call i32 @git_commit_nth_gen_ancestor(i32** %3, i32* %25, i32 1)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @_repo, align 4
  %29 = load i32*, i32** @commit, align 8
  %30 = call i32* @git_commit_id(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32* @git_commit_id(i32* %31)
  %33 = call i32 @git_graph_ahead_behind(i32* @ahead, i32* @behind, i32 %28, i32* %30, i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @ahead, align 4
  %36 = load i32, i32* @behind, align 4
  %37 = add nsw i32 %36, 2
  %38 = call i32 @cl_assert_equal_sz(i32 %35, i32 %37)
  %39 = load i32, i32* @_repo, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @git_commit_id(i32* %40)
  %42 = load i32*, i32** @commit, align 8
  %43 = call i32* @git_commit_id(i32* %42)
  %44 = call i32 @git_graph_ahead_behind(i32* @ahead, i32* @behind, i32 %39, i32* %41, i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @ahead, align 4
  %47 = add nsw i32 %46, 2
  %48 = load i32, i32* @behind, align 4
  %49 = call i32 @cl_assert_equal_sz(i32 %47, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_commit_free(i32* %50)
  %52 = load i32*, i32** @commit, align 8
  %53 = call i32 @git_commit_nth_gen_ancestor(i32** %3, i32* %52, i32 3)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @_repo, align 4
  %56 = load i32*, i32** @commit, align 8
  %57 = call i32* @git_commit_id(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32* @git_commit_id(i32* %58)
  %60 = call i32 @git_graph_ahead_behind(i32* @ahead, i32* @behind, i32 %55, i32* %57, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32, i32* @ahead, align 4
  %63 = load i32, i32* @behind, align 4
  %64 = add nsw i32 %63, 4
  %65 = call i32 @cl_assert_equal_sz(i32 %62, i32 %64)
  %66 = load i32, i32* @_repo, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32* @git_commit_id(i32* %67)
  %69 = load i32*, i32** @commit, align 8
  %70 = call i32* @git_commit_id(i32* %69)
  %71 = call i32 @git_graph_ahead_behind(i32* @ahead, i32* @behind, i32 %66, i32* %68, i32* %70)
  %72 = call i32 @cl_git_pass(i32 %71)
  %73 = load i32, i32* @ahead, align 4
  %74 = add nsw i32 %73, 4
  %75 = load i32, i32* @behind, align 4
  %76 = call i32 @cl_assert_equal_sz(i32 %74, i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @git_commit_free(i32* %77)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_graph_ahead_behind(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32* @git_commit_id(i32*) #1

declare dso_local i32 @git_commit_nth_gen_ancestor(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
