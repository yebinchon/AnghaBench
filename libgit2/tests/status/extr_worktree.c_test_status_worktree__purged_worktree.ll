; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__purged_worktree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__purged_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@remove_file_cb = common dso_local global i32 0, align 4
@entry_count2 = common dso_local global i32 0, align 4
@entry_paths2 = common dso_local global i32 0, align 4
@entry_statuses2 = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__purged_worktree() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @git_repository_workdir(i32* %6)
  %8 = call i32 @git_buf_sets(i32* %3, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @remove_file_cb, align 4
  %11 = call i32 @git_path_direach(i32* %3, i32 0, i32 %10, i32* null)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_buf_dispose(i32* %3)
  %14 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 24)
  %15 = load i32, i32* @entry_count2, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @entry_paths2, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @entry_statuses2, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @cb_status__normal, align 4
  %23 = call i32 @git_status_foreach(i32* %21, i32 %22, %struct.TYPE_4__* %1)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_i(i32 0, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cl_assert_equal_i(i32 0, i32 %34)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_sets(i32*, i32) #1

declare dso_local i32 @git_repository_workdir(i32*) #1

declare dso_local i32 @git_path_direach(i32*, i32, i32, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @git_status_foreach(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
