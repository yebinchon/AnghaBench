; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_index.c_test_apply_index__modified_workdir_with_unmodified_index_is_ok.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_index.c_test_apply_index__modified_workdir_with_unmodified_index_is_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@DIFF_MODIFY_TWO_FILES = common dso_local global i8* null, align 8
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
@.str.12 = private unnamed_addr constant [41 x i8] c"f75ba05f340c51065cbea2e1fdbfe5fe13144c97\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"merge-recursive/asparagus.txt\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"merge-recursive/veal.txt\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Hello, world.\0A\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_index__modified_workdir_with_unmodified_index_is_ok() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [6 x %struct.merge_index_entry], align 16
  %4 = alloca i64, align 8
  %5 = alloca [5 x %struct.merge_index_entry], align 16
  %6 = alloca i64, align 8
  %7 = load i8*, i8** @DIFF_MODIFY_TWO_FILES, align 8
  store i8* %7, i8** %2, align 8
  %8 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 0
  store i32 33188, i32* %9, align 16
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 2
  store i8* null, i8** %11, align 16
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %12, align 8
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i64 1
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 0
  store i32 33188, i32* %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 2
  store i8* null, i8** %16, align 16
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %17, align 8
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %13, i64 1
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 0
  store i32 33188, i32* %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 2
  store i8* null, i8** %21, align 16
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %22, align 8
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %18, i64 1
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 0
  store i32 33188, i32* %24, align 16
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 2
  store i8* null, i8** %26, align 16
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i64 1
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %28, i32 0, i32 0
  store i32 33188, i32* %29, align 16
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %28, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %28, i32 0, i32 2
  store i8* null, i8** %31, align 16
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %28, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %32, align 8
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %28, i64 1
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %33, i32 0, i32 0
  store i32 33188, i32* %34, align 16
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %33, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %33, i32 0, i32 2
  store i8* null, i8** %36, align 16
  %37 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %33, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %37, align 8
  store i64 6, i64* %4, align 8
  %38 = getelementptr inbounds [5 x %struct.merge_index_entry], [5 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %39 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %38, i32 0, i32 0
  store i32 33188, i32* %39, align 16
  %40 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %38, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %40, align 8
  %41 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %38, i32 0, i32 2
  store i8* null, i8** %41, align 16
  %42 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %38, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %42, align 8
  %43 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %38, i64 1
  %44 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %43, i32 0, i32 0
  store i32 33188, i32* %44, align 16
  %45 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %43, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %45, align 8
  %46 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %43, i32 0, i32 2
  store i8* null, i8** %46, align 16
  %47 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %43, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %47, align 8
  %48 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %43, i64 1
  %49 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %48, i32 0, i32 0
  store i32 33188, i32* %49, align 16
  %50 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %48, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %48, i32 0, i32 2
  store i8* null, i8** %51, align 16
  %52 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %48, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %52, align 8
  %53 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %48, i64 1
  %54 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %53, i32 0, i32 0
  store i32 33188, i32* %54, align 16
  %55 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %53, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %53, i32 0, i32 2
  store i8* null, i8** %56, align 16
  %57 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %53, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %57, align 8
  %58 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %53, i64 1
  %59 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %58, i32 0, i32 0
  store i32 33188, i32* %59, align 16
  %60 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %58, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %58, i32 0, i32 2
  store i8* null, i8** %61, align 16
  %62 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %58, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %62, align 8
  store i64 5, i64* %6, align 8
  %63 = call i32 @cl_git_rmfile(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %64 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %65 = load i8*, i8** %2, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @git_diff_from_buffer(i32** %1, i8* %65, i32 %67)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load i32, i32* @repo, align 4
  %71 = load i32*, i32** %1, align 8
  %72 = load i32, i32* @GIT_APPLY_LOCATION_INDEX, align 4
  %73 = call i32 @git_apply(i32 %70, i32* %71, i32 %72, i32* null)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = load i32, i32* @repo, align 4
  %76 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @validate_apply_index(i32 %75, %struct.merge_index_entry* %76, i64 %77)
  %79 = load i32, i32* @repo, align 4
  %80 = getelementptr inbounds [5 x %struct.merge_index_entry], [5 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @validate_apply_workdir(i32 %79, %struct.merge_index_entry* %80, i64 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @git_diff_free(i32* %83)
  ret void
}

declare dso_local i32 @cl_git_rmfile(i8*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_from_buffer(i32**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_apply(i32, i32*, i32, i32*) #1

declare dso_local i32 @validate_apply_index(i32, %struct.merge_index_entry*, i64) #1

declare dso_local i32 @validate_apply_workdir(i32, %struct.merge_index_entry*, i64) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
