; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__can_detached_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__can_detached_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1
@g_options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"master~1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"./foo1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_nonetwork__can_detached_head() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i8* @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @git_clone(i32** @g_repo, i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @g_options)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** @g_repo, align 8
  %8 = call i32 @git_revparse_single(i32** %1, i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** @g_repo, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_object_id(i32* %11)
  %13 = call i32 @git_repository_set_head_detached(i32* %10, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_clone(i32** %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @g_options)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_repository_head_detached(i32* %17)
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_repository_head(i32** %3, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_object_id(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_reference_target(i32* %25)
  %27 = call i32 @cl_assert_equal_oid(i32 %24, i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_object_free(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_reference_free(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_repository_free(i32* %32)
  %34 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_clone(i32**, i8*, i8*, i32*) #1

declare dso_local i8* @cl_git_fixture_url(i8*) #1

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #1

declare dso_local i32 @git_repository_set_head_detached(i32*, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_head_detached(i32*) #1

declare dso_local i32 @git_repository_head(i32**, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
