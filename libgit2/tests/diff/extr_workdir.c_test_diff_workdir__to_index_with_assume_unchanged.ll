; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_with_assume_unchanged.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_with_assume_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@GIT_INDEX_ENTRY_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"file_deleted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_index_with_assume_unchanged() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %7, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %8 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* @g_repo, align 4
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %9, i32* null, i32* %1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @memset(%struct.TYPE_10__* %4, i32 0, i32 16)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @diff_file_cb, align 4
  %15 = load i32, i32* @diff_binary_cb, align 4
  %16 = load i32, i32* @diff_hunk_cb, align 4
  %17 = load i32, i32* @diff_line_cb, align 4
  %18 = call i32 @git_diff_foreach(i32* %13, i32 %14, i32 %15, i32 %16, i32 %17, %struct.TYPE_10__* %4)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cl_assert_equal_i(i32 8, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cl_assert_equal_i(i32 0, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_assert_equal_i(i32 4, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_i(i32 4, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @git_diff_free(i32* %41)
  %43 = load i32, i32* @g_repo, align 4
  %44 = call i32 @git_repository_index(i32** %3, i32 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call %struct.TYPE_9__* @git_index_get_bypath(i32* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %5, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = call i32 @memcpy(%struct.TYPE_9__* %6, %struct.TYPE_9__* %51, i32 4)
  %53 = load i32, i32* @GIT_INDEX_ENTRY_VALID, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_index_add(i32* %57, %struct.TYPE_9__* %6)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call %struct.TYPE_9__* @git_index_get_bypath(i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %5, align 8
  %62 = icmp ne %struct.TYPE_9__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @cl_assert(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = call i32 @memcpy(%struct.TYPE_9__* %6, %struct.TYPE_9__* %65, i32 4)
  %67 = load i32, i32* @GIT_INDEX_ENTRY_VALID, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @git_index_add(i32* %71, %struct.TYPE_9__* %6)
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @git_index_write(i32* %74)
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @git_index_free(i32* %77)
  %79 = load i32, i32* @g_repo, align 4
  %80 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %79, i32* null, i32* %1)
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = call i32 @memset(%struct.TYPE_10__* %4, i32 0, i32 16)
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* @diff_file_cb, align 4
  %85 = load i32, i32* @diff_binary_cb, align 4
  %86 = load i32, i32* @diff_hunk_cb, align 4
  %87 = load i32, i32* @diff_line_cb, align 4
  %88 = call i32 @git_diff_foreach(i32* %83, i32 %84, i32 %85, i32 %86, i32 %87, %struct.TYPE_10__* %4)
  %89 = call i32 @cl_git_pass(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @cl_assert_equal_i(i32 6, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cl_assert_equal_i(i32 0, i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cl_assert_equal_i(i32 3, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cl_assert_equal_i(i32 3, i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @git_diff_free(i32* %111)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_9__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
