; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__push_range_no_range.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__push_range_no_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_walk = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_basic__push_range_no_range() #0 {
  %1 = call i32 @revwalk_basic_setup_walk(i32* null)
  %2 = load i32, i32* @_walk, align 4
  %3 = call i32 @git_revwalk_reset(i32 %2)
  %4 = load i32, i32* @_walk, align 4
  %5 = call i32 @git_revwalk_sorting(i32 %4, i32 0)
  %6 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %7 = load i32, i32* @_walk, align 4
  %8 = call i32 @git_revwalk_push_range(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_fail_with(i32 %6, i32 %8)
  ret void
}

declare dso_local i32 @revwalk_basic_setup_walk(i32*) #1

declare dso_local i32 @git_revwalk_reset(i32) #1

declare dso_local i32 @git_revwalk_sorting(i32, i32) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_revwalk_push_range(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
