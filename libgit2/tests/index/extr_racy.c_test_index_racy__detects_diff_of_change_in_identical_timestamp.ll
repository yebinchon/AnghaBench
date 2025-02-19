; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__detects_diff_of_change_in_identical_timestamp.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__detects_diff_of_change_in_identical_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_racy__detects_diff_of_change_in_identical_timestamp() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_repository_index__weakptr(i32** %1, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 (...) @setup_race()
  %7 = load i32, i32* @g_repo, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %7, i32* %8, i32* null)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_diff_num_deltas(i32* %11)
  %13 = call i32 @cl_assert_equal_i(i32 1, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_diff_free(i32* %14)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #1

declare dso_local i32 @setup_race(...) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
