; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_trivial.c_test_merge_trees_trivial__10.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_trivial.c_test_merge_trees_trivial__10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"trivial-10\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"trivial-10-branch\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"removed-in-10-branch.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_trivial__10() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @merge_trivial(i32** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32* @git_index_get_bypath(i32* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32* %7, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_index_reuc_entrycount(i32* %11)
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32* @git_index_reuc_get_bypath(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i64 @merge_trivial_conflict_entrycount(i32* %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_index_free(i32* %25)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @merge_trivial(i32**, i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @git_index_reuc_entrycount(i32*) #1

declare dso_local i32* @git_index_reuc_get_bypath(i32*, i8*) #1

declare dso_local i64 @merge_trivial_conflict_entrycount(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
