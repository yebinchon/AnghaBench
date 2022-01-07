; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_trivial.c_test_merge_workdir_trivial__3alt.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_trivial.c_test_merge_workdir_trivial__3alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"trivial-3alt\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"trivial-3alt-branch\00", align 1
@repo_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"new-in-3alt.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_workdir_trivial__3alt() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @merge_trivial(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = load i32, i32* @repo_index, align 4
  %5 = call i32* @git_index_get_bypath(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32* %5, i32** %1, align 8
  %6 = ptrtoint i32* %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = load i32, i32* @repo_index, align 4
  %9 = call i64 @git_index_reuc_entrycount(i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = call i64 (...) @merge_trivial_conflict_entrycount()
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @merge_trivial(i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i64 @git_index_reuc_entrycount(i32) #1

declare dso_local i64 @merge_trivial_conflict_entrycount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
