; ModuleID = '/home/carl/AnghaBench/libgit2/tests/threads/extr_diff.c_run_index_diffs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/threads/extr_diff.c_run_index_diffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@_a = common dso_local global i32 0, align 4
@_b = common dso_local global i32 0, align 4
@_counts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @run_index_diffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_index_diffs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %13, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %14 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* @_repo, align 4
  %16 = call i32 @git_repository_path(i32 %15)
  %17 = call i32 @git_repository_open(i32** %4, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 3
  switch i32 %20, label %45 [
    i32 0, label %21
    i32 1, label %25
    i32 2, label %30
    i32 3, label %35
  ]

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_diff_index_to_workdir(i32** %6, i32* %22, i32* null, i32* %5)
  %24 = call i32 @cl_git_pass(i32 %23)
  br label %45

25:                                               ; preds = %1
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @_a, align 4
  %28 = call i32 @git_diff_tree_to_index(i32** %6, i32* %26, i32 %27, i32* null, i32* %5)
  %29 = call i32 @cl_git_pass(i32 %28)
  br label %45

30:                                               ; preds = %1
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @_b, align 4
  %33 = call i32 @git_diff_tree_to_index(i32** %6, i32* %31, i32 %32, i32* null, i32* %5)
  %34 = call i32 @cl_git_pass(i32 %33)
  br label %45

35:                                               ; preds = %1
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @git_repository_index(i32** %9, i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @git_diff_index_to_workdir(i32** %6, i32* %39, i32* %40, i32* %5)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @git_index_free(i32* %43)
  br label %45

45:                                               ; preds = %1, %35, %30, %25, %21
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @git_diff_num_deltas(i32* %46)
  store i64 %47, i64* %7, align 8
  %48 = load i32*, i32** @_counts, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @git_atomic_add(i32* %49, i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %54, i32* %55, align 16
  br label %56

56:                                               ; preds = %88, %45
  %57 = load i64, i64* %7, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %7, align 8
  %63 = call %struct.TYPE_2__* @git_diff_get_delta(i32* %60, i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %87 [
    i32 128, label %66
    i32 130, label %73
    i32 129, label %80
  ]

66:                                               ; preds = %59
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32*, i32** @_counts, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = call i32 @git_atomic_inc(i32* %71)
  br label %88

73:                                               ; preds = %59
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load i32*, i32** @_counts, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = call i32 @git_atomic_inc(i32* %78)
  br label %88

80:                                               ; preds = %59
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load i32*, i32** @_counts, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = call i32 @git_atomic_inc(i32* %85)
  br label %88

87:                                               ; preds = %59
  br label %88

88:                                               ; preds = %87, %80, %73, %66
  br label %56

89:                                               ; preds = %56
  %90 = load i32, i32* %3, align 4
  %91 = and i32 %90, 3
  switch i32 %91, label %131 [
    i32 0, label %92
    i32 3, label %92
    i32 1, label %105
    i32 2, label %118
  ]

92:                                               ; preds = %89, %89
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = call i32 @cl_assert_equal_i(i32 8, i32 %94)
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cl_assert_equal_i(i32 4, i32 %97)
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @cl_assert_equal_i(i32 0, i32 %100)
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cl_assert_equal_i(i32 4, i32 %103)
  br label %131

105:                                              ; preds = %89
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = call i32 @cl_assert_equal_i(i32 12, i32 %107)
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cl_assert_equal_i(i32 3, i32 %110)
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @cl_assert_equal_i(i32 7, i32 %113)
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cl_assert_equal_i(i32 2, i32 %116)
  br label %131

118:                                              ; preds = %89
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = call i32 @cl_assert_equal_i(i32 8, i32 %120)
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cl_assert_equal_i(i32 3, i32 %123)
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @cl_assert_equal_i(i32 3, i32 %126)
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @cl_assert_equal_i(i32 2, i32 %129)
  br label %131

131:                                              ; preds = %89, %118, %105, %92
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @git_diff_free(i32* %132)
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @git_repository_free(i32* %134)
  %136 = call i32 (...) @git_error_clear()
  %137 = load i8*, i8** %2, align 8
  ret i8* %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32*, i32, i32*, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_atomic_add(i32*, i32) #2

declare dso_local %struct.TYPE_2__* @git_diff_get_delta(i32*, i64) #2

declare dso_local i32 @git_atomic_inc(i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_error_clear(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
