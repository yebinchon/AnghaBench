; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__filemode_changes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__filemode_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

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
define dso_local void @test_diff_workdir__filemode_changes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %4 = call i32 (...) @cl_is_chmod_supported()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %105

7:                                                ; preds = %0
  %8 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* @g_repo, align 4
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @cl_repo_set_bool(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_diff_index_to_workdir(i32** %1, i32 %11, i32* null, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %50, %7
  %15 = load i32, i32* %3, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = call i32 @memset(%struct.TYPE_5__* %2, i32 0, i32 24)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @diff_file_cb, align 4
  %24 = load i32, i32* @diff_binary_cb, align 4
  %25 = load i32, i32* @diff_hunk_cb, align 4
  %26 = load i32, i32* @diff_line_cb, align 4
  %27 = call i32 @diff_foreach_via_iterator(i32* %22, i32 %23, i32 %24, i32 %25, i32 %26, %struct.TYPE_5__* %2)
  %28 = call i32 @cl_git_pass(i32 %27)
  br label %37

29:                                               ; preds = %17
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @diff_file_cb, align 4
  %32 = load i32, i32* @diff_binary_cb, align 4
  %33 = load i32, i32* @diff_hunk_cb, align 4
  %34 = load i32, i32* @diff_line_cb, align 4
  %35 = call i32 @git_diff_foreach(i32* %30, i32 %31, i32 %32, i32 %33, i32 %34, %struct.TYPE_5__* %2)
  %36 = call i32 @cl_git_pass(i32 %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cl_assert_equal_i(i32 0, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_i(i32 0, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cl_assert_equal_i(i32 0, i32 %48)
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_diff_free(i32* %54)
  %56 = call i32 @cl_toggle_filemode(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @cl_assert(i32 %56)
  %58 = load i32, i32* @g_repo, align 4
  %59 = call i32 @git_diff_index_to_workdir(i32** %1, i32 %58, i32* null, i32* null)
  %60 = call i32 @cl_git_pass(i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %97, %53
  %62 = load i32, i32* %3, align 4
  %63 = icmp sle i32 %62, 1
  br i1 %63, label %64, label %100

64:                                               ; preds = %61
  %65 = call i32 @memset(%struct.TYPE_5__* %2, i32 0, i32 24)
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32*, i32** %1, align 8
  %70 = load i32, i32* @diff_file_cb, align 4
  %71 = load i32, i32* @diff_binary_cb, align 4
  %72 = load i32, i32* @diff_hunk_cb, align 4
  %73 = load i32, i32* @diff_line_cb, align 4
  %74 = call i32 @diff_foreach_via_iterator(i32* %69, i32 %70, i32 %71, i32 %72, i32 %73, %struct.TYPE_5__* %2)
  %75 = call i32 @cl_git_pass(i32 %74)
  br label %84

76:                                               ; preds = %64
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* @diff_file_cb, align 4
  %79 = load i32, i32* @diff_binary_cb, align 4
  %80 = load i32, i32* @diff_hunk_cb, align 4
  %81 = load i32, i32* @diff_line_cb, align 4
  %82 = call i32 @git_diff_foreach(i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, %struct.TYPE_5__* %2)
  %83 = call i32 @cl_git_pass(i32 %82)
  br label %84

84:                                               ; preds = %76, %68
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @cl_assert_equal_i(i32 1, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cl_assert_equal_i(i32 1, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @cl_assert_equal_i(i32 0, i32 %95)
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %61

100:                                              ; preds = %61
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @git_diff_free(i32* %101)
  %103 = call i32 @cl_toggle_filemode(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %104 = call i32 @cl_assert(i32 %103)
  br label %105

105:                                              ; preds = %100, %6
  ret void
}

declare dso_local i32 @cl_is_chmod_supported(...) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @diff_foreach_via_iterator(i32*, i32, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_5__*) #1

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
