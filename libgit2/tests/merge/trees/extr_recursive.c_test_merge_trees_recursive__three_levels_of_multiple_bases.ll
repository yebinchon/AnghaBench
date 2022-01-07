; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_recursive.c_test_merge_trees_recursive__three_levels_of_multiple_bases.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_recursive.c_test_merge_trees_recursive__three_levels_of_multiple_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@GIT_MERGE_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ffb36e513f5fdf8a6ba850a20142676a2ac4807d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"68f6182f4c85d39e1309d97c7e456156dc9c0096\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"beef.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"4b7c5650008b2e747fe1809eeb5a1dde0e80850a\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bouilli.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"c4e6cca3ec6ae0148ed231f97257df8c311e015f\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gravy.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"68af1fc7407fd9addf1701a87eb1c95c7494c598\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"oyster.txt\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"d55e5dc038c52f1a36548625bcb666cbc06db9e6\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"veal.txt\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"branchD-2\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"branchD-1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_recursive__three_levels_of_multiple_bases() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [6 x %struct.merge_index_entry], align 16
  %4 = load i32, i32* @GIT_MERGE_OPTIONS_INIT, align 4
  store i32 %4, i32* %2, align 4
  %5 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i32 0, i32 0
  store i32 33188, i32* %6, align 16
  %7 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i32 0, i32 2
  store i8* null, i8** %8, align 16
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i64 1
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i32 0, i32 0
  store i32 33188, i32* %11, align 16
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i32 0, i32 2
  store i8* null, i8** %13, align 16
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %14, align 8
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i64 1
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i32 0, i32 0
  store i32 33188, i32* %16, align 16
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i32 0, i32 2
  store i8* null, i8** %18, align 16
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %19, align 8
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i64 1
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i32 0, i32 0
  store i32 33188, i32* %21, align 16
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i32 0, i32 2
  store i8* null, i8** %23, align 16
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %24, align 8
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i64 1
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i32 0, i32 0
  store i32 33188, i32* %26, align 16
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i32 0, i32 2
  store i8* null, i8** %28, align 16
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %29, align 8
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i64 1
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 0
  store i32 33188, i32* %31, align 16
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 2
  store i8* null, i8** %33, align 16
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %34, align 8
  %35 = load i32, i32* @repo, align 4
  %36 = call i32 @merge_commits_from_branches(i32** %1, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32* %2)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %40 = call i32 @merge_test_index(i32* %38, %struct.merge_index_entry* %39, i32 6)
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_index_free(i32* %42)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @merge_commits_from_branches(i32**, i32, i8*, i8*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
