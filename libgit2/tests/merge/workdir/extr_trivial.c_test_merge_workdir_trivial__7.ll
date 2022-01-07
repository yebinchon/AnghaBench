; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_trivial.c_test_merge_workdir_trivial__7.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_trivial.c_test_merge_workdir_trivial__7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"trivial-7\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"trivial-7-branch\00", align 1
@repo_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"removed-in-7.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_workdir_trivial__7() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @merge_trivial(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = load i32, i32* @repo_index, align 4
  %5 = call i32* @git_index_get_bypath(i32 %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32* %5, i32** %1, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = load i32, i32* @repo_index, align 4
  %10 = call i64 @git_index_reuc_entrycount(i32 %9)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = call i32 (...) @merge_trivial_conflict_entrycount()
  %15 = icmp eq i32 %14, 2
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = load i32, i32* @repo_index, align 4
  %19 = call i32* @git_index_get_bypath(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %19, i32** %1, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32, i32* @repo_index, align 4
  %23 = call i32* @git_index_get_bypath(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 3)
  store i32* %23, i32** %1, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @merge_trivial(i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i64 @git_index_reuc_entrycount(i32) #1

declare dso_local i32 @merge_trivial_conflict_entrycount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
