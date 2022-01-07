; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_drop.c_test_stash_drop__dropping_the_top_stash_updates_the_stash_reference.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_drop.c_test_stash_drop__dropping_the_top_stash_updates_the_stash_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"stash@{1}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_drop__dropping_the_top_stash_updates_the_stash_reference() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @push_three_states()
  %4 = call i32 @retrieve_top_stash_id(i32* %2)
  %5 = load i32, i32* @repo, align 4
  %6 = call i32 @git_revparse_single(i32** %1, i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_object_id(i32* %8)
  %10 = call i32 @git_oid_cmp(i32* %2, i32 %9)
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_stash_drop(i32 %12, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @retrieve_top_stash_id(i32* %2)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_object_id(i32* %16)
  %18 = call i32 @cl_assert_equal_oid(i32* %2, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_object_free(i32* %19)
  ret void
}

declare dso_local i32 @push_three_states(...) #1

declare dso_local i32 @retrieve_top_stash_id(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_cmp(i32*, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @git_stash_drop(i32, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
