; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__filemode_changes_with_filemode_false.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__filemode_changes_with_filemode_false.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"issue_592\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"core.filemode\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"issue_592/a.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__filemode_changes_with_filemode_false() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  store i32* null, i32** %1, align 8
  %3 = call i32 (...) @cl_is_chmod_supported()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %64

6:                                                ; preds = %0
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @cl_repo_set_bool(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_diff_index_to_workdir(i32** %1, i32 %10, i32* null, i32* null)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 24)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @diff_file_cb, align 4
  %16 = load i32, i32* @diff_binary_cb, align 4
  %17 = load i32, i32* @diff_hunk_cb, align 4
  %18 = load i32, i32* @diff_line_cb, align 4
  %19 = call i32 @git_diff_foreach(i32* %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.TYPE_4__* %2)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cl_assert_equal_i(i32 0, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 0, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cl_assert_equal_i(i32 0, i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_diff_free(i32* %33)
  %35 = call i32 @cl_toggle_filemode(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = call i32 @git_diff_index_to_workdir(i32** %1, i32 %37, i32* null, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 24)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @diff_file_cb, align 4
  %43 = load i32, i32* @diff_binary_cb, align 4
  %44 = load i32, i32* @diff_hunk_cb, align 4
  %45 = load i32, i32* @diff_line_cb, align 4
  %46 = call i32 @git_diff_foreach(i32* %41, i32 %42, i32 %43, i32 %44, i32 %45, %struct.TYPE_4__* %2)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cl_assert_equal_i(i32 0, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cl_assert_equal_i(i32 0, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @cl_assert_equal_i(i32 0, i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @git_diff_free(i32* %60)
  %62 = call i32 @cl_toggle_filemode(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @cl_assert(i32 %62)
  br label %64

64:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @cl_is_chmod_supported(...) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_toggle_filemode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
