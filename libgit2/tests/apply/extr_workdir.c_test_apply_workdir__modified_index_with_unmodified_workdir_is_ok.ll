; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_workdir.c_test_apply_workdir__modified_index_with_unmodified_workdir_is_ok.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_workdir.c_test_apply_workdir__modified_index_with_unmodified_workdir_is_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@DIFF_MODIFY_TWO_FILES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"68f6182f4c85d39e1309d97c7e456156dc9c0096\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"beef.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"4b7c5650008b2e747fe1809eeb5a1dde0e80850a\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bouilli.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"c4e6cca3ec6ae0148ed231f97257df8c311e015f\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gravy.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"68af1fc7407fd9addf1701a87eb1c95c7494c598\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"oyster.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"ffb36e513f5fdf8a6ba850a20142676a2ac4807d\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"veal.txt\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"a7b066537e6be7109abfe4ff97b675d4e077da20\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_WORKDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_workdir__modified_index_with_unmodified_workdir_is_ok() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [5 x %struct.merge_index_entry], align 16
  %6 = alloca i64, align 8
  %7 = alloca [6 x %struct.merge_index_entry], align 16
  %8 = alloca i64, align 8
  %9 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i8*, i8** @DIFF_MODIFY_TWO_FILES, align 8
  store i8* %10, i8** %4, align 8
  %11 = getelementptr inbounds [5 x %struct.merge_index_entry], [5 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 0
  store i32 33188, i32* %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 2
  store i8* null, i8** %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.1 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i64 1
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 2
  store i8* null, i8** %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.3 to i32), i32* %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i64 1
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 0
  store i32 33188, i32* %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 2
  store i8* null, i8** %24, align 16
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.5 to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i64 1
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 0
  store i32 33188, i32* %27, align 16
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 2
  store i8* null, i8** %29, align 16
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.7 to i32), i32* %30, align 8
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i64 1
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 0
  store i32 33188, i32* %32, align 16
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 2
  store i8* null, i8** %34, align 16
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.9 to i32), i32* %35, align 8
  store i64 5, i64* %6, align 8
  %36 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %37 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i32 0, i32 0
  store i32 33188, i32* %37, align 16
  %38 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i32 0, i32 2
  store i8* null, i8** %39, align 16
  %40 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.10 to i32), i32* %40, align 8
  %41 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %36, i64 1
  %42 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i32 0, i32 0
  store i32 33188, i32* %42, align 16
  %43 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i32 0, i32 2
  store i8* null, i8** %44, align 16
  %45 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.1 to i32), i32* %45, align 8
  %46 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %41, i64 1
  %47 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i32 0, i32 0
  store i32 33188, i32* %47, align 16
  %48 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i32 0, i32 2
  store i8* null, i8** %49, align 16
  %50 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.3 to i32), i32* %50, align 8
  %51 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %46, i64 1
  %52 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %51, i32 0, i32 0
  store i32 33188, i32* %52, align 16
  %53 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %51, i32 0, i32 2
  store i8* null, i8** %54, align 16
  %55 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %51, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.5 to i32), i32* %55, align 8
  %56 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %51, i64 1
  %57 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %56, i32 0, i32 0
  store i32 33188, i32* %57, align 16
  %58 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %56, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %58, align 8
  %59 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %56, i32 0, i32 2
  store i8* null, i8** %59, align 16
  %60 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %56, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.7 to i32), i32* %60, align 8
  %61 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %56, i64 1
  %62 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %61, i32 0, i32 0
  store i32 33188, i32* %62, align 16
  %63 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %61, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8** %63, align 8
  %64 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %61, i32 0, i32 2
  store i8* null, i8** %64, align 16
  %65 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %61, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.9 to i32), i32* %65, align 8
  store i64 6, i64* %8, align 8
  %66 = load i32, i32* @repo, align 4
  %67 = call i32 @git_repository_index(i32** %1, i32 %66)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 33188, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %72 = call i32 @git_oid_fromstr(i32* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @git_index_add(i32* %74, %struct.TYPE_5__* %2)
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @git_index_remove(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_index_write(i32* %80)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = call i32 @git_diff_from_buffer(i32** %3, i8* %83, i32 %85)
  %87 = call i32 @cl_git_pass(i32 %86)
  %88 = load i32, i32* @repo, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @GIT_APPLY_LOCATION_WORKDIR, align 4
  %91 = call i32 @git_apply(i32 %88, i32* %89, i32 %90, i32* null)
  %92 = call i32 @cl_git_pass(i32 %91)
  %93 = load i32, i32* @repo, align 4
  %94 = getelementptr inbounds [5 x %struct.merge_index_entry], [5 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @validate_apply_index(i32 %93, %struct.merge_index_entry* %94, i64 %95)
  %97 = load i32, i32* @repo, align 4
  %98 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @validate_apply_workdir(i32 %97, %struct.merge_index_entry* %98, i64 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @git_index_free(i32* %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @git_diff_free(i32* %103)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_apply(i32, i32*, i32, i32*) #2

declare dso_local i32 @validate_apply_index(i32, %struct.merge_index_entry*, i64) #2

declare dso_local i32 @validate_apply_workdir(i32, %struct.merge_index_entry*, i64) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
