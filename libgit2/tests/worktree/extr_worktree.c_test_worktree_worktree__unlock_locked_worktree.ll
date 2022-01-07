; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__unlock_locked_worktree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__unlock_locked_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@fixture = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"testrepo-worktree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__unlock_locked_worktree() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fixture, i32 0, i32 0), align 4
  %3 = call i32 @git_worktree_lookup(%struct.TYPE_8__** %1, i32 %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %6 = call i32 @git_worktree_lock(%struct.TYPE_8__* %5, i32* null)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %9 = call i32 @git_worktree_is_locked(i32* null, %struct.TYPE_8__* %8)
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %12 = call i32 @git_worktree_unlock(%struct.TYPE_8__* %11)
  %13 = call i32 @cl_assert_equal_i(i32 0, i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %22 = call i32 @git_worktree_free(%struct.TYPE_8__* %21)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_worktree_lookup(%struct.TYPE_8__**, i32, i8*) #1

declare dso_local i32 @git_worktree_lock(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_worktree_is_locked(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_worktree_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @git_worktree_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
