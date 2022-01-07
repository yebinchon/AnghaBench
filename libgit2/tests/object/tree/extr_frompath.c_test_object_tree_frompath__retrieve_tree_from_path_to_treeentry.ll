; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_frompath.c_test_object_tree_frompath__retrieve_tree_from_path_to_treeentry.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_frompath.c_test_object_tree_frompath__retrieve_tree_from_path_to_treeentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"README\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ab/de/fgh/1.txt\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1.txt\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ab/de/fgh\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"fgh\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ab/de/fgh/\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ab/de\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ab/\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ab/de/\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"i-do-not-exist.txt\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"README/\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"ab/de/fgh/i-do-not-exist.txt\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"nope/de/fgh/1.txt\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"ab/me-neither/fgh/2.txt\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"ab/me-neither/fgh/2.txt/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_frompath__retrieve_tree_from_path_to_treeentry() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @tree, align 4
  %3 = call i32 @assert_tree_from_path(i32 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @tree, align 4
  %5 = call i32 @assert_tree_from_path(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %6 = load i32, i32* @tree, align 4
  %7 = call i32 @assert_tree_from_path(i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %8 = load i32, i32* @tree, align 4
  %9 = call i32 @assert_tree_from_path(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %10 = load i32, i32* @tree, align 4
  %11 = call i32 @assert_tree_from_path(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %12 = load i32, i32* @tree, align 4
  %13 = call i32 @assert_tree_from_path(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %14 = load i32, i32* @tree, align 4
  %15 = call i32 @assert_tree_from_path(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %16 = load i32, i32* @GIT_ENOTFOUND, align 4
  %17 = load i32, i32* @tree, align 4
  %18 = call i32 @git_tree_entry_bypath(i32** %1, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %19 = call i32 @cl_assert_equal_i(i32 %16, i32 %18)
  %20 = load i32, i32* @GIT_ENOTFOUND, align 4
  %21 = load i32, i32* @tree, align 4
  %22 = call i32 @git_tree_entry_bypath(i32** %1, i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %23 = call i32 @cl_assert_equal_i(i32 %20, i32 %22)
  %24 = load i32, i32* @GIT_ENOTFOUND, align 4
  %25 = load i32, i32* @tree, align 4
  %26 = call i32 @git_tree_entry_bypath(i32** %1, i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %27 = call i32 @cl_assert_equal_i(i32 %24, i32 %26)
  %28 = load i32, i32* @GIT_ENOTFOUND, align 4
  %29 = load i32, i32* @tree, align 4
  %30 = call i32 @git_tree_entry_bypath(i32** %1, i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %31 = call i32 @cl_assert_equal_i(i32 %28, i32 %30)
  %32 = load i32, i32* @GIT_ENOTFOUND, align 4
  %33 = load i32, i32* @tree, align 4
  %34 = call i32 @git_tree_entry_bypath(i32** %1, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %35 = call i32 @cl_assert_equal_i(i32 %32, i32 %34)
  %36 = load i32, i32* @GIT_ENOTFOUND, align 4
  %37 = load i32, i32* @tree, align 4
  %38 = call i32 @git_tree_entry_bypath(i32** %1, i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %39 = call i32 @cl_assert_equal_i(i32 %36, i32 %38)
  ret void
}

declare dso_local i32 @assert_tree_from_path(i32, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_tree_entry_bypath(i32**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
