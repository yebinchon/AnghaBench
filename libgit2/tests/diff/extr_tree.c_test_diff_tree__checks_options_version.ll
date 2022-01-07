; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__checks_options_version.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__checks_options_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"8496071c1b46c85\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"be3563ae3f79\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@g_repo = common dso_local global i32 0, align 4
@a = common dso_local global i32* null, align 8
@b = common dso_local global i32* null, align 8
@opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@diff = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_tree__checks_options_version() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %4 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %4, i32* @g_repo, align 4
  %5 = load i32, i32* @g_repo, align 4
  %6 = load i8*, i8** %1, align 8
  %7 = call i8* @resolve_commit_oid_to_tree(i32 %5, i8* %6)
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @a, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @resolve_commit_oid_to_tree(i32 %12, i8* %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** @b, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @opts, i32 0, i32 0), align 4
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32*, i32** @a, align 8
  %21 = load i32*, i32** @b, align 8
  %22 = call i32 @git_diff_tree_to_tree(i32* @diff, i32 %19, i32* %20, i32* %21, %struct.TYPE_6__* @opts)
  %23 = call i32 @cl_git_fail(i32 %22)
  %24 = call %struct.TYPE_5__* (...) @git_error_last()
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %3, align 8
  %25 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 %25, i32 %28)
  %30 = call i32 (...) @git_error_clear()
  store i32 1024, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @opts, i32 0, i32 0), align 4
  %31 = load i32, i32* @g_repo, align 4
  %32 = load i32*, i32** @a, align 8
  %33 = load i32*, i32** @b, align 8
  %34 = call i32 @git_diff_tree_to_tree(i32* @diff, i32 %31, i32* %32, i32* %33, %struct.TYPE_6__* @opts)
  %35 = call i32 @cl_git_fail(i32 %34)
  %36 = call %struct.TYPE_5__* (...) @git_error_last()
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %3, align 8
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i8* @resolve_commit_oid_to_tree(i32, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_diff_tree_to_tree(i32*, i32, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @git_error_last(...) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
