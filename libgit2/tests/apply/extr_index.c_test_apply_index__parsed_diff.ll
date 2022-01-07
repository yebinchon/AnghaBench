; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_index.c_test_apply_index__parsed_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_index.c_test_apply_index__parsed_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

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
@.str.10 = private unnamed_addr constant [41 x i8] c"a7b066537e6be7109abfe4ff97b675d4e077da20\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"veal.txt\00", align 1
@DIFF_MODIFY_TWO_FILES = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_index__parsed_diff() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [6 x %struct.merge_index_entry], align 16
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %4, i32 0, i32 0
  store i32 33188, i32* %5, align 16
  %6 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %4, i32 0, i32 2
  store i8* null, i8** %7, align 16
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %4, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %8, align 8
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %4, i64 1
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 0
  store i32 33188, i32* %10, align 16
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 2
  store i8* null, i8** %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i64 1
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 0
  store i32 33188, i32* %15, align 16
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 2
  store i8* null, i8** %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i64 1
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 0
  store i32 33188, i32* %20, align 16
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 2
  store i8* null, i8** %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i64 1
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 0
  store i32 33188, i32* %25, align 16
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 2
  store i8* null, i8** %27, align 16
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %28, align 8
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i64 1
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 0
  store i32 33188, i32* %30, align 16
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 2
  store i8* null, i8** %32, align 16
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %33, align 8
  store i64 6, i64* %3, align 8
  %34 = load i32, i32* @DIFF_MODIFY_TWO_FILES, align 4
  %35 = load i32, i32* @DIFF_MODIFY_TWO_FILES, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = call i32 @git_diff_from_buffer(i32** %1, i32 %34, i32 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @repo, align 4
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @GIT_APPLY_LOCATION_INDEX, align 4
  %42 = call i32 @git_apply(i32 %39, i32* %40, i32 %41, i32* null)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @repo, align 4
  %45 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %2, i64 0, i64 0
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @validate_apply_index(i32 %44, %struct.merge_index_entry* %45, i64 %46)
  %48 = load i32, i32* @repo, align 4
  %49 = call i32 @validate_workdir_unchanged(i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @git_diff_free(i32* %50)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @git_apply(i32, i32*, i32, i32*) #1

declare dso_local i32 @validate_apply_index(i32, %struct.merge_index_entry*, i64) #1

declare dso_local i32 @validate_workdir_unchanged(i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
