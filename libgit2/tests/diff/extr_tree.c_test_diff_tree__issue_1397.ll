; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__issue_1397.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__issue_1397.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"issue_1397\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"8a7ef04\00", align 1
@a = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"7f483a7\00", align 1
@b = common dso_local global i32* null, align 8
@diff = common dso_local global i32 0, align 4
@opts = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@expect = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_TYPECHANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_tree__issue_1397() #0 {
  %1 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @g_repo, align 4
  %2 = load i32, i32* @g_repo, align 4
  %3 = call i32 @cl_repo_set_bool(i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i8* @resolve_commit_oid_to_tree(i32 %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** @a, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i8* @resolve_commit_oid_to_tree(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @b, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32*, i32** @a, align 8
  %18 = load i32*, i32** @b, align 8
  %19 = call i32 @git_diff_tree_to_tree(i32* @diff, i32 %16, i32* %17, i32* %18, i32* @opts)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @diff, align 4
  %22 = load i32, i32* @diff_file_cb, align 4
  %23 = load i32, i32* @diff_binary_cb, align 4
  %24 = load i32, i32* @diff_hunk_cb, align 4
  %25 = load i32, i32* @diff_line_cb, align 4
  %26 = call i32 @git_diff_foreach(i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, %struct.TYPE_3__* @expect)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 1), align 8
  %29 = call i32 @cl_assert_equal_i(i32 1, i32 %28)
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 0), align 8
  %31 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_assert_equal_i(i32 0, i32 %33)
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 0), align 8
  %36 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i32 1, i32 %38)
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 0), align 8
  %41 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_assert_equal_i(i32 0, i32 %43)
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @expect, i32 0, i32 0), align 8
  %46 = load i64, i64* @GIT_DELTA_TYPECHANGE, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_i(i32 0, i32 %48)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i8* @resolve_commit_oid_to_tree(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_tree_to_tree(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @git_diff_foreach(i32, i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
