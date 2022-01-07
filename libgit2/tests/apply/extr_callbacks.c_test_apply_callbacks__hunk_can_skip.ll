; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_callbacks.c_test_apply_callbacks__hunk_can_skip.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_callbacks.c_test_apply_callbacks__hunk_can_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@GIT_APPLY_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
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
@.str.10 = private unnamed_addr constant [41 x i8] c"06f751b6ba4f017ddbf4248015768300268e092a\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"veal.txt\00", align 1
@hunk_skip_odds_cb = common dso_local global i32 0, align 4
@DIFF_MANY_CHANGES_ONE = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_WORKDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_callbacks__hunk_can_skip() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x %struct.merge_index_entry], align 16
  %5 = alloca i64, align 8
  %6 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_APPLY_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %3, align 4
  %7 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 0
  store i32 33188, i32* %8, align 16
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 2
  store i8* null, i8** %10, align 16
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %11, align 8
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i64 1
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 0
  store i32 33188, i32* %13, align 16
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 2
  store i8* null, i8** %15, align 16
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %16, align 8
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i64 1
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 0
  store i32 33188, i32* %18, align 16
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 2
  store i8* null, i8** %20, align 16
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %21, align 8
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i64 1
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i32 0, i32 0
  store i32 33188, i32* %23, align 16
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i32 0, i32 2
  store i8* null, i8** %25, align 16
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %26, align 8
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i64 1
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i32 0, i32 0
  store i32 33188, i32* %28, align 16
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i32 0, i32 2
  store i8* null, i8** %30, align 16
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %31, align 8
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i64 1
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i32 0, i32 0
  store i32 33188, i32* %33, align 16
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i32 0, i32 2
  store i8* null, i8** %35, align 16
  %36 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %36, align 8
  store i64 6, i64* %5, align 8
  %37 = load i32, i32* @hunk_skip_odds_cb, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32* %3, i32** %39, align 8
  %40 = load i32, i32* @DIFF_MANY_CHANGES_ONE, align 4
  %41 = load i32, i32* @DIFF_MANY_CHANGES_ONE, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = call i32 @git_diff_from_buffer(i32** %1, i32 %40, i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32, i32* @repo, align 4
  %46 = load i32*, i32** %1, align 8
  %47 = load i32, i32* @GIT_APPLY_LOCATION_WORKDIR, align 4
  %48 = call i32 @git_apply(i32 %45, i32* %46, i32 %47, %struct.TYPE_4__* %2)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32, i32* @repo, align 4
  %51 = call i32 @validate_index_unchanged(i32 %50)
  %52 = load i32, i32* @repo, align 4
  %53 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %4, i64 0, i64 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @validate_apply_workdir(i32 %52, %struct.merge_index_entry* %53, i64 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @git_diff_free(i32* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @git_apply(i32, i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @validate_index_unchanged(i32) #2

declare dso_local i32 @validate_apply_workdir(i32, %struct.merge_index_entry*, i64) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
