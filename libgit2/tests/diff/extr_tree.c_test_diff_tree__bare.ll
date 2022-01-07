; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__bare.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__bare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"8496071c1b46c85\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"be3563ae3f79\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@g_repo = common dso_local global i32 0, align 4
@a = common dso_local global i32* null, align 8
@b = common dso_local global i32* null, align 8
@opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@diff = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@expect = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_tree__bare() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %3 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %3, i32* @g_repo, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = call i8* @resolve_commit_oid_to_tree(i32 %4, i8* %5)
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** @a, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* @resolve_commit_oid_to_tree(i32 %11, i8* %12)
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** @b, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @opts, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @opts, i32 0, i32 1), align 4
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i32*, i32** @a, align 8
  %20 = load i32*, i32** @b, align 8
  %21 = call i32 @git_diff_tree_to_tree(i32* @diff, i32 %18, i32* %19, i32* %20, %struct.TYPE_5__* @opts)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @diff, align 4
  %24 = load i32, i32* @diff_file_cb, align 4
  %25 = load i32, i32* @diff_binary_cb, align 4
  %26 = load i32, i32* @diff_hunk_cb, align 4
  %27 = load i32, i32* @diff_line_cb, align 4
  %28 = call i32 @git_diff_foreach(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, %struct.TYPE_6__* @expect)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 6), align 8
  %31 = call i32 @cl_assert_equal_i(i32 3, i32 %30)
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 5), align 8
  %33 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_i(i32 2, i32 %35)
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 5), align 8
  %38 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_i(i32 0, i32 %40)
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 5), align 8
  %43 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_i(i32 1, i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 4), align 8
  %48 = call i32 @cl_assert_equal_i(i32 3, i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 3), align 4
  %50 = call i32 @cl_assert_equal_i(i32 4, i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 2), align 8
  %52 = call i32 @cl_assert_equal_i(i32 0, i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 1), align 4
  %54 = call i32 @cl_assert_equal_i(i32 3, i32 %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expect, i32 0, i32 0), align 8
  %56 = call i32 @cl_assert_equal_i(i32 1, i32 %55)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i8* @resolve_commit_oid_to_tree(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_tree_to_tree(i32*, i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @git_diff_foreach(i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
