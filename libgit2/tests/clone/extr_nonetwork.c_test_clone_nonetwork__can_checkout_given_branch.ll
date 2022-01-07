; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__can_checkout_given_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__can_checkout_given_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@g_options = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1
@g_ref = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"refs/heads/test\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"foo/readme.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_nonetwork__can_checkout_given_branch() #0 {
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_options, i32 0, i32 0), align 8
  %1 = call i32 @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @git_clone(i32* @g_repo, i32 %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* @g_options)
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_repository_head_unborn(i32 %4)
  %6 = call i32 @cl_assert_equal_i(i32 0, i32 %5)
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_repository_head(i32* @g_ref, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_ref, align 4
  %11 = call i32 @git_reference_name(i32 %10)
  %12 = call i32 @cl_assert_equal_s(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @git_path_exists(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @cl_assert(i32 %13)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_clone(i32*, i32, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @cl_git_fixture_url(i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_head_unborn(i32) #1

declare dso_local i32 @git_repository_head(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_reference_name(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
