; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__can_cancel_clone_in_checkout.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__can_cancel_clone_in_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@g_options = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GIT_CHECKOUT_NOTIFY_UPDATED = common dso_local global i32 0, align 4
@clone_cancel_checkout_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"readme.txt\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"foo/readme.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_nonetwork__can_cancel_clone_in_checkout() #0 {
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_options, i32 0, i32 0), align 8
  %1 = load i32, i32* @GIT_CHECKOUT_NOTIFY_UPDATED, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_options, i32 0, i32 1, i32 2), align 4
  %2 = load i32, i32* @clone_cancel_checkout_cb, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_options, i32 0, i32 1, i32 1), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_options, i32 0, i32 1, i32 0), align 8
  %3 = call i32 @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @git_clone(i32* @g_repo, i32 %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_5__* @g_options)
  %5 = call i32 @cl_git_fail_with(i32 %4, i32 -12345)
  %6 = load i32, i32* @g_repo, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = call i32 @git_path_exists(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  ret void
}

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_clone(i32*, i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @cl_git_fixture_url(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
