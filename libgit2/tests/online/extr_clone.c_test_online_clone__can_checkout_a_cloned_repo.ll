; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__can_checkout_a_cloned_repo.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__can_checkout_a_cloned_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32*, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@g_options = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@checkout_progress = common dso_local global i32 0, align 4
@fetch_progress = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@LIVE_REPO_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"./foo\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"master.txt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__can_checkout_a_cloned_repo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %5, i32* %1, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 1, i32 2), align 8
  store i32* @checkout_progress, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 1, i32 1), align 8
  store i32* %3, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 1, i32 0), align 8
  store i32* @fetch_progress, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  store i32* %4, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = load i32, i32* @LIVE_REPO_URL, align 4
  %8 = call i32 @git_clone(i32* @g_repo, i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* @g_options)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_repository_workdir(i32 %10)
  %12 = call i32 @git_buf_joinpath(i32* %1, i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_buf_cstr(i32* %1)
  %15 = call i32 @git_path_isfile(i32 %14)
  %16 = call i32 @cl_assert_equal_i(i32 1, i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_reference_lookup(i32** %2, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_reference_type(i32* %21)
  %23 = call i32 @cl_assert_equal_i(i32 %20, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_reference_symbolic_target(i32* %24)
  %26 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @cl_assert_equal_i(i32 1, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cl_assert_equal_i(i32 1, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @git_reference_free(i32* %31)
  %33 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_clone(i32*, i32, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_repository_workdir(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_path_isfile(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_reference_type(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reference_symbolic_target(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
