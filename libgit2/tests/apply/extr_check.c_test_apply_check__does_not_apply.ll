; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_check.c_test_apply_check__does_not_apply.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_check.c_test_apply_check__does_not_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@GIT_APPLY_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DIFF_MODIFY_TWO_FILES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"f51658077d85f2264fa179b4d0848268cb3475c3\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"68f6182f4c85d39e1309d97c7e456156dc9c0096\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"beef.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"4b7c5650008b2e747fe1809eeb5a1dde0e80850a\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bouilli.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"c4e6cca3ec6ae0148ed231f97257df8c311e015f\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gravy.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"68af1fc7407fd9addf1701a87eb1c95c7494c598\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"oyster.txt\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"veal.txt\00", align 1
@GIT_APPLY_CHECK = common dso_local global i32 0, align 4
@GIT_EAPPLYFAIL = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_check__does_not_apply() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [5 x %struct.merge_index_entry], align 16
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_APPLY_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = load i8*, i8** @DIFF_MODIFY_TWO_FILES, align 8
  store i8* %8, i8** %4, align 8
  %9 = getelementptr inbounds [5 x %struct.merge_index_entry], [5 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 0
  store i32 33188, i32* %10, align 16
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 2
  store i8* null, i8** %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i64 1
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 0
  store i32 33188, i32* %15, align 16
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 2
  store i8* null, i8** %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i64 1
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 0
  store i32 33188, i32* %20, align 16
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 2
  store i8* null, i8** %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %19, i64 1
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 0
  store i32 33188, i32* %25, align 16
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 2
  store i8* null, i8** %27, align 16
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %28, align 8
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i64 1
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 0
  store i32 33188, i32* %30, align 16
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 2
  store i8* null, i8** %32, align 16
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %29, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %33, align 8
  store i64 5, i64* %6, align 8
  %34 = load i32, i32* @repo, align 4
  %35 = call i32 @git_repository_index(i32** %2, i32 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @git_index_remove(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_index_write(i32* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_index_free(i32* %43)
  %45 = load i32, i32* @GIT_APPLY_CHECK, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @git_diff_from_buffer(i32** %1, i8* %49, i32 %51)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32, i32* @GIT_EAPPLYFAIL, align 4
  %55 = load i32, i32* @repo, align 4
  %56 = load i32*, i32** %1, align 8
  %57 = load i32, i32* @GIT_APPLY_LOCATION_INDEX, align 4
  %58 = call i32 @git_apply(i32 %55, i32* %56, i32 %57, %struct.TYPE_4__* %3)
  %59 = call i32 @cl_git_fail_with(i32 %54, i32 %58)
  %60 = load i32, i32* @repo, align 4
  %61 = getelementptr inbounds [5 x %struct.merge_index_entry], [5 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @validate_apply_index(i32 %60, %struct.merge_index_entry* %61, i64 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_diff_free(i32* %64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_apply(i32, i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @validate_apply_index(i32, %struct.merge_index_entry*, i64) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
