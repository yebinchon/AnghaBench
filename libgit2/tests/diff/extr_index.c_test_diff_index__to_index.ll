; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_test_diff_index__to_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_test_diff_index__to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"26a125ee1bf\00", align 1
@g_repo = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_CONFLICTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_index__to_index() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = call i32 @git_index_new(i32** %3)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i8*, i8** %1, align 8
  %11 = call i32* @resolve_commit_oid_to_tree(i32 %9, i8* %10)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_index_read_tree(i32* %12, i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_repository_index(i32** %4, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @git_diff_index_to_index(i32** %5, i32 %19, i32* %20, i32* %21, i32* null)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 16)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @diff_file_cb, align 4
  %27 = load i32, i32* @diff_binary_cb, align 4
  %28 = load i32, i32* @diff_hunk_cb, align 4
  %29 = load i32, i32* @diff_line_cb, align 4
  %30 = call i32 @git_diff_foreach(i32* %25, i32 %26, i32 %27, i32 %28, i32 %29, %struct.TYPE_4__* %6)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cl_assert_equal_i(i32 8, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_i(i32 3, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_i(i32 2, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_i(i32 3, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @GIT_DELTA_CONFLICTED, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_i(i32 0, i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @git_diff_free(i32* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @git_index_free(i32* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @git_index_free(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @git_tree_free(i32* %65)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_new(i32**) #1

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #1

declare dso_local i32 @git_index_read_tree(i32*, i32*) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_diff_index_to_index(i32**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
