; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_drop.c_test_refs_reflog_drop__dropping_a_non_exisiting_entry_from_the_log_returns_ENOTFOUND.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_drop.c_test_refs_reflog_drop__dropping_a_non_exisiting_entry_from_the_log_returns_ENOTFOUND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@g_reflog = common dso_local global i32 0, align 4
@entrycount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_drop__dropping_a_non_exisiting_entry_from_the_log_returns_ENOTFOUND() #0 {
  %1 = load i32, i32* @GIT_ENOTFOUND, align 4
  %2 = load i32, i32* @g_reflog, align 4
  %3 = load i32, i32* @entrycount, align 4
  %4 = call i32 @git_reflog_drop(i32 %2, i32 %3, i32 0)
  %5 = call i32 @cl_assert_equal_i(i32 %1, i32 %4)
  %6 = load i32, i32* @entrycount, align 4
  %7 = load i32, i32* @g_reflog, align 4
  %8 = call i32 @git_reflog_entrycount(i32 %7)
  %9 = call i32 @cl_assert_equal_sz(i32 %6, i32 %8)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reflog_drop(i32, i32, i32) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_reflog_entrycount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
