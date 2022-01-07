; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__can_diff_empty_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__can_diff_empty_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"attr_index\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"3812cfef3661\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"attr_index/README.txt\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__can_diff_empty_file() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32* @resolve_commit_oid_to_tree(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %2, align 8
  %10 = load i32, i32* @g_repo, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_diff_tree_to_workdir(i32** %1, i32 %10, i32* %11, i32* %3)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i64 @git_diff_num_deltas(i32* %14)
  %16 = trunc i64 %15 to i32
  %17 = call i32 @cl_assert_equal_i(i32 2, i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_diff_free(i32* %18)
  %20 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @git_path_lstat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %4)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @cl_assert_equal_i(i32 0, i32 %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_diff_tree_to_workdir(i32** %1, i32 %27, i32* %28, i32* %3)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @git_diff_num_deltas(i32* %31)
  %33 = trunc i64 %32 to i32
  %34 = call i32 @cl_assert_equal_i(i32 3, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_patch_from_diff(i32** %5, i32* %35, i32 1)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_patch_free(i32* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_diff_free(i32* %40)
  %42 = call i32 @p_unlink(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = call i32 @git_path_exists(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32, i32* @g_repo, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_diff_tree_to_workdir(i32** %1, i32 %49, i32* %50, i32* %3)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i64 @git_diff_num_deltas(i32* %53)
  %55 = trunc i64 %54 to i32
  %56 = call i32 @cl_assert_equal_i(i32 3, i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_patch_from_diff(i32** %5, i32* %57, i32 1)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @git_patch_free(i32* %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @git_diff_free(i32* %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @git_tree_free(i32* %64)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_path_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @p_unlink(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
