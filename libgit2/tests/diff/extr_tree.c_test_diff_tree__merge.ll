; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"605812a\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"370fe9ec22\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"f5b0af1fb4f5c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@g_repo = common dso_local global i32 0, align 4
@a = common dso_local global i32* null, align 8
@b = common dso_local global i32* null, align 8
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@expect = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_tree__merge() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** %1, align 8
  %10 = call i8* @resolve_commit_oid_to_tree(i32 %8, i8* %9)
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** @a, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @resolve_commit_oid_to_tree(i32 %15, i8* %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** @b, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @resolve_commit_oid_to_tree(i32 %22, i8* %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32*, i32** @a, align 8
  %31 = load i32*, i32** @b, align 8
  %32 = call i32 @git_diff_tree_to_tree(i32** %5, i32 %29, i32* %30, i32* %31, i32* null)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @g_repo, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** @b, align 8
  %37 = call i32 @git_diff_tree_to_tree(i32** %6, i32 %34, i32* %35, i32* %36, i32* null)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @git_tree_free(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @git_diff_merge(i32* %41, i32* %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @git_diff_free(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @diff_file_cb, align 4
  %49 = load i32, i32* @diff_binary_cb, align 4
  %50 = load i32, i32* @diff_hunk_cb, align 4
  %51 = load i32, i32* @diff_line_cb, align 4
  %52 = call i32 @git_diff_foreach(i32* %47, i32 %48, i32 %49, i32 %50, i32 %51, %struct.TYPE_3__* @expect)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 6), align 8
  %55 = call i32 @cl_assert_equal_i(i32 6, i32 %54)
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 5), align 8
  %57 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cl_assert_equal_i(i32 2, i32 %59)
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 5), align 8
  %62 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_i(i32 1, i32 %64)
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 5), align 8
  %67 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cl_assert_equal_i(i32 3, i32 %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 4), align 8
  %72 = call i32 @cl_assert_equal_i(i32 6, i32 %71)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 3), align 4
  %74 = call i32 @cl_assert_equal_i(i32 59, i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 2), align 8
  %76 = call i32 @cl_assert_equal_i(i32 1, i32 %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 1), align 4
  %78 = call i32 @cl_assert_equal_i(i32 36, i32 %77)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 0), align 8
  %80 = call i32 @cl_assert_equal_i(i32 22, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @git_diff_free(i32* %81)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i8* @resolve_commit_oid_to_tree(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_diff_merge(i32*, i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
