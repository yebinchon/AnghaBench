; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_both.c_test_apply_both__honors_crlf_attributes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_both.c_test_apply_both__honors_crlf_attributes.c"
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
@.str.12 = private unnamed_addr constant [41 x i8] c"176a458f94e0ea5272ce67c36bf30b6be9caf623\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c".gitattributes\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"merge-recursive/.gitattributes\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"* text=auto\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"merge-recursive/asparagus.txt\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"merge-recursive/veal.txt\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"539bd011c4822c560c1d17cab095006b7a10f707\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_both__honors_crlf_attributes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [6 x %struct.merge_index_entry], align 16
  %6 = alloca i64, align 8
  %7 = alloca [7 x %struct.merge_index_entry], align 16
  %8 = alloca i64, align 8
  %9 = load i8*, i8** @DIFF_MODIFY_TWO_FILES, align 8
  store i8* %9, i8** %4, align 8
  %10 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i32 0, i32 0
  store i32 33188, i32* %11, align 16
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i32 0, i32 2
  store i8* null, i8** %13, align 16
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %14, align 8
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i64 1
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i32 0, i32 0
  store i32 33188, i32* %16, align 16
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i32 0, i32 2
  store i8* null, i8** %18, align 16
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %19, align 8
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %15, i64 1
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i32 0, i32 0
  store i32 33188, i32* %21, align 16
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i32 0, i32 2
  store i8* null, i8** %23, align 16
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %24, align 8
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %20, i64 1
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i32 0, i32 0
  store i32 33188, i32* %26, align 16
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i32 0, i32 2
  store i8* null, i8** %28, align 16
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %29, align 8
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %25, i64 1
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 0
  store i32 33188, i32* %31, align 16
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 2
  store i8* null, i8** %33, align 16
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %34, align 8
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i64 1
  %36 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %35, i32 0, i32 0
  store i32 33188, i32* %36, align 16
  %37 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %35, i32 0, i32 2
  store i8* null, i8** %38, align 16
  %39 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %35, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %39, align 8
  store i64 6, i64* %6, align 8
  %40 = getelementptr inbounds [7 x %struct.merge_index_entry], [7 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %41 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %40, i32 0, i32 0
  store i32 33188, i32* %41, align 16
  %42 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %40, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %40, i32 0, i32 2
  store i8* null, i8** %43, align 16
  %44 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %40, i32 0, i32 3
  store i32 ptrtoint ([15 x i8]* @.str.13 to i32), i32* %44, align 8
  %45 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %40, i64 1
  %46 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %45, i32 0, i32 0
  store i32 33188, i32* %46, align 16
  %47 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %45, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %45, i32 0, i32 2
  store i8* null, i8** %48, align 16
  %49 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %45, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %49, align 8
  %50 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %45, i64 1
  %51 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %50, i32 0, i32 0
  store i32 33188, i32* %51, align 16
  %52 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %50, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %50, i32 0, i32 2
  store i8* null, i8** %53, align 16
  %54 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %50, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %54, align 8
  %55 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %50, i64 1
  %56 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %55, i32 0, i32 0
  store i32 33188, i32* %56, align 16
  %57 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %55, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %57, align 8
  %58 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %55, i32 0, i32 2
  store i8* null, i8** %58, align 16
  %59 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %55, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %59, align 8
  %60 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %55, i64 1
  %61 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %60, i32 0, i32 0
  store i32 33188, i32* %61, align 16
  %62 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %60, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %60, i32 0, i32 2
  store i8* null, i8** %63, align 16
  %64 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %60, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %64, align 8
  %65 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %60, i64 1
  %66 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %65, i32 0, i32 0
  store i32 33188, i32* %66, align 16
  %67 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %65, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %67, align 8
  %68 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %65, i32 0, i32 2
  store i8* null, i8** %68, align 16
  %69 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %65, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %69, align 8
  %70 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %65, i64 1
  %71 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %70, i32 0, i32 0
  store i32 33188, i32* %71, align 16
  %72 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %70, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %72, align 8
  %73 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %70, i32 0, i32 2
  store i8* null, i8** %73, align 16
  %74 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %70, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %74, align 8
  store i64 7, i64* %8, align 8
  %75 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %76 = call i32 @cl_git_rmfile(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %77 = call i32 @cl_git_rmfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %78 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0))
  %79 = load i32, i32* @repo, align 4
  %80 = call i32 @git_commit_lookup(i32** %3, i32 %79, i32* %2)
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = load i32, i32* @repo, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* @GIT_RESET_HARD, align 4
  %85 = call i32 @git_reset(i32 %82, i32* %83, i32 %84, i32* null)
  %86 = call i32 @cl_git_pass(i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @git_commit_free(i32* %87)
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i32 @git_diff_from_buffer(i32** %1, i8* %89, i32 %91)
  %93 = call i32 @cl_git_pass(i32 %92)
  %94 = load i32, i32* @repo, align 4
  %95 = load i32*, i32** %1, align 8
  %96 = load i32, i32* @GIT_APPLY_LOCATION_BOTH, align 4
  %97 = call i32 @git_apply(i32 %94, i32* %95, i32 %96, i32* null)
  %98 = call i32 @cl_git_pass(i32 %97)
  %99 = load i32, i32* @repo, align 4
  %100 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @validate_apply_index(i32 %99, %struct.merge_index_entry* %100, i64 %101)
  %103 = load i32, i32* @repo, align 4
  %104 = getelementptr inbounds [7 x %struct.merge_index_entry], [7 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @validate_apply_workdir(i32 %103, %struct.merge_index_entry* %104, i64 %105)
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @git_diff_free(i32* %107)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_rmfile(i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

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
