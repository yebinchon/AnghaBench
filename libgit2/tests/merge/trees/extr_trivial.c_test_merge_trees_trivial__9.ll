; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_trivial.c_test_merge_trees_trivial__9.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_trivial.c_test_merge_trees_trivial__9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"trivial-9\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"trivial-9-branch\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"removed-in-9-branch.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_trivial__9() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @merge_trivial(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32* @git_index_get_bypath(i32* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32* %6, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i64 @git_index_reuc_entrycount(i32* %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @merge_trivial_conflict_entrycount(i32* %15)
  %17 = icmp eq i32 %16, 2
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @git_index_get_bypath(i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %21, i32** %2, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32* @git_index_get_bypath(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i32* %25, i32** %2, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_index_free(i32* %28)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @merge_trivial(i32**, i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i64 @git_index_reuc_entrycount(i32*) #1

declare dso_local i32 @merge_trivial_conflict_entrycount(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
