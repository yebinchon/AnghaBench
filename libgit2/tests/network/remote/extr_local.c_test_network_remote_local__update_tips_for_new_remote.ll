; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__update_tips_for_new_remote.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__update_tips_for_new_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"./localbare.git\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bare\00", align 1
@push_array = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"bare/master\00", align 1
@GIT_BRANCH_REMOTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"localbare.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_local__update_tips_for_new_remote() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 @cl_fixture_sandbox(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @git_repository_init(i32** %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_remote_create(i32** %3, i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @git_remote_push(i32* %13, i32* @push_array, i32* null)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @GIT_BRANCH_REMOTE, align 4
  %18 = call i32 @git_branch_lookup(i32** %4, i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @git_reference_free(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @git_remote_free(i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_repository_free(i32* %24)
  %26 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_repository_free(i32* %27)
  %29 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_fixture_sandbox(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_remote_create(i32**, i32*, i8*, i8*) #1

declare dso_local i32 @git_remote_push(i32*, i32*, i32*) #1

declare dso_local i32 @git_branch_lookup(i32**, i32*, i8*, i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
