; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_checkout_and_remove_directory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_checkout_and_remove_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"./testrepo/ab/\00", align 1
@g_object = common dso_local global i32* null, align 8
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"subtrees\00", align 1
@g_opts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"refs/heads/subtrees\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"./testrepo/ab/de/2.txt\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"./testrepo/ab/de/fgh/1.txt\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__can_checkout_and_remove_directory() #0 {
  %1 = call i32 @git_path_isdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @cl_assert_equal_i(i32 0, i32 %1)
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_revparse_single(i32** @g_object, i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @g_repo, align 4
  %7 = load i32*, i32** @g_object, align 8
  %8 = call i32 @git_checkout_tree(i32 %6, i32* %7, i32* @g_opts)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_repository_set_head(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_path_isdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_assert_equal_i(i32 1, i32 %13)
  %15 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @cl_assert_equal_i(i32 1, i32 %15)
  %17 = call i32 @git_path_isfile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @cl_assert_equal_i(i32 1, i32 %17)
  %19 = load i32*, i32** @g_object, align 8
  %20 = call i32 @git_object_free(i32* %19)
  store i32* null, i32** @g_object, align 8
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_revparse_single(i32** @g_object, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = load i32*, i32** @g_object, align 8
  %26 = call i32 @git_checkout_tree(i32 %24, i32* %25, i32* @g_opts)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = call i32 @git_repository_set_head(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_path_isdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @cl_assert_equal_i(i32 0, i32 %31)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_path_isdir(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #1

declare dso_local i32 @git_checkout_tree(i32, i32*, i32*) #1

declare dso_local i32 @git_repository_set_head(i32, i8*) #1

declare dso_local i32 @git_path_isfile(i8*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
