; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree_init.c_test_status_worktree_init__first_commit_in_progress.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree_init.c_test_status_worktree_init__first_commit_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@cleanup_new_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"getting_started\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"getting_started/testfile.txt\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"content\0A\00", align 1
@cb_status__single = common dso_local global i32 0, align 4
@GIT_STATUS_WT_NEW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"testfile.txt\00", align 1
@GIT_STATUS_INDEX_NEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree_init__first_commit_in_progress() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = call i32 @cl_set_cleanup(i32* @cleanup_new_repo, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @cb_status__single, align 4
  %11 = call i32 @git_status_foreach(i32* %9, i32 %10, %struct.TYPE_4__* %3)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @cl_assert_equal_i(i32 1, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GIT_STATUS_WT_NEW, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_repository_index(i32** %2, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_index_add_bypath(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_index_write(i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @cb_status__single, align 4
  %34 = call i32 @git_status_foreach(i32* %32, i32 %33, %struct.TYPE_4__* %3)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @cl_assert_equal_i(i32 1, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GIT_STATUS_INDEX_NEW, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @git_index_free(i32* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_repository_free(i32* %47)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @git_status_foreach(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
