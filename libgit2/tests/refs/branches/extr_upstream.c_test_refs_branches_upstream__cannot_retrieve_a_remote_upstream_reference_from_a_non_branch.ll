; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_upstream.c_test_refs_branches_upstream__cannot_retrieve_a_remote_upstream_reference_from_a_non_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_upstream.c_test_refs_branches_upstream__cannot_retrieve_a_remote_upstream_reference_from_a_non_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@branch = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/tags/e90810b\00", align 1
@upstream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_upstream__cannot_retrieve_a_remote_upstream_reference_from_a_non_branch() #0 {
  %1 = load i32, i32* @repo, align 4
  %2 = call i32 @git_reference_lookup(i32* @branch, i32 %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = load i32, i32* @branch, align 4
  %5 = call i32 @git_branch_upstream(i32* @upstream, i32 %4)
  %6 = call i32 @cl_git_fail(i32 %5)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32*, i32, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_branch_upstream(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
