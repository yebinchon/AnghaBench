; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_index.c_test_apply_index__can_apply_nonconflicting_file_changes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_index.c_test_apply_index__can_apply_nonconflicting_file_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@DIFF_MODIFY_TWO_FILES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"4f2d1645dee99ced096877911de540c65ade2ef8\00", align 1
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
@repo = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"06d3fefb8726ab1099acc76e02dfb85e034b2538\00", align 1
@GIT_APPLY_LOCATION_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_index__can_apply_nonconflicting_file_changes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [6 x %struct.merge_index_entry], align 16
  %6 = alloca i64, align 8
  %7 = load i8*, i8** @DIFF_MODIFY_TWO_FILES, align 8
  store i8* %7, i8** %4, align 8
  %8 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %5, i64 0, i64 0
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
  store i64 6, i64* %6, align 8
  %38 = load i32, i32* @repo, align 4
  %39 = call i32 @git_repository_index(i32** %2, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 24)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 33188, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %45 = call i32 @git_oid_fromstr(i32* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @git_index_add(i32* %47, %struct.TYPE_4__* %3)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_index_write(i32* %50)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @git_index_free(i32* %53)
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @git_diff_from_buffer(i32** %1, i8* %55, i32 %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32, i32* @repo, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = load i32, i32* @GIT_APPLY_LOCATION_INDEX, align 4
  %63 = call i32 @git_apply(i32 %60, i32* %61, i32 %62, i32* null)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32, i32* @repo, align 4
  %66 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @validate_apply_index(i32 %65, %struct.merge_index_entry* %66, i64 %67)
  %69 = load i32, i32* @repo, align 4
  %70 = call i32 @validate_workdir_unchanged(i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @git_diff_free(i32* %71)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_diff_from_buffer(i32**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

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
