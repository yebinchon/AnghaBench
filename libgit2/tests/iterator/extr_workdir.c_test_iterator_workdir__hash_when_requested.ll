; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__hash_when_requested.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__hash_when_requested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32, i32, i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"ffb36e513f5fdf8a6ba850a20142676a2ac4807d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"68f6182f4c85d39e1309d97c7e456156dc9c0096\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"beef.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"4b7c5650008b2e747fe1809eeb5a1dde0e80850a\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bouilli.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"c4e6cca3ec6ae0148ed231f97257df8c311e015f\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gravy.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"7c7e08f9559d9e1551b91e1cf68f1d0066109add\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"oyster.txt\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"898d12687fb35be271c27c795a6b32c8b51da79e\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"veal.txt\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"merge-recursive\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__hash_when_requested() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca i64, align 8
  %6 = alloca [6 x %struct.merge_index_entry], align 16
  %7 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 0
  store i32 33188, i32* %10, align 8
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 2
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 4
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i32 0, i32 5
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i64 1
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 8
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 2
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 4
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 5
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i64 1
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 0
  store i32 33188, i32* %24, align 8
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 2
  store i8* null, i8** %26, align 8
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i32 0, i32 5
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %23, i64 1
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 0
  store i32 33188, i32* %31, align 8
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 2
  store i8* null, i8** %33, align 8
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %34, align 8
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 4
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i32 0, i32 5
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %30, i64 1
  %38 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 0
  store i32 33188, i32* %38, align 8
  %39 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 2
  store i8* null, i8** %40, align 8
  %41 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %41, align 8
  %42 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 4
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 5
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i64 1
  %45 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 0
  store i32 33188, i32* %45, align 8
  %46 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 2
  store i8* null, i8** %47, align 8
  %48 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %48, align 8
  %49 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 4
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %44, i32 0, i32 5
  store i32 0, i32* %50, align 8
  %51 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  store i32 %51, i32* @g_repo, align 4
  %52 = load i32, i32* @g_repo, align 4
  %53 = call i32 @git_iterator_for_workdir(i32** %1, i32 %52, i32* null, i32* null, %struct.TYPE_12__* %3)
  %54 = call i32 @cl_git_pass(i32 %53)
  store i64 0, i64* %5, align 8
  br label %55

55:                                               ; preds = %73, %0
  %56 = load i64, i64* %5, align 8
  %57 = icmp ult i64 %56, 6
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @git_iterator_advance(%struct.TYPE_13__** %2, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = call i32 @cl_assert_equal_oid(%struct.TYPE_11__* %4, i32* %63)
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %6, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cl_assert_equal_s(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %58
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %55

76:                                               ; preds = %55
  %77 = load i32, i32* @GIT_ITEROVER, align 4
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @git_iterator_advance(%struct.TYPE_13__** %2, i32* %78)
  %80 = call i32 @cl_assert_equal_i(i32 %77, i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @git_iterator_free(i32* %81)
  %83 = load i32, i32* @GIT_ITERATOR_INCLUDE_HASH, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @g_repo, align 4
  %88 = call i32 @git_iterator_for_workdir(i32** %1, i32 %87, i32* null, i32* null, %struct.TYPE_12__* %3)
  %89 = call i32 @cl_git_pass(i32 %88)
  store i64 0, i64* %5, align 8
  br label %90

90:                                               ; preds = %114, %76
  %91 = load i64, i64* %5, align 8
  %92 = icmp ult i64 %91, 6
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @git_iterator_advance(%struct.TYPE_13__** %2, i32* %94)
  %96 = call i32 @cl_git_pass(i32 %95)
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %6, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @git_oid_fromstr(%struct.TYPE_11__* %4, i32 %100)
  %102 = call i32 @cl_git_pass(i32 %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = call i32 @cl_assert_equal_oid(%struct.TYPE_11__* %4, i32* %104)
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %6, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @cl_assert_equal_s(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %93
  %115 = load i64, i64* %5, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %5, align 8
  br label %90

117:                                              ; preds = %90
  %118 = load i32, i32* @GIT_ITEROVER, align 4
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @git_iterator_advance(%struct.TYPE_13__** %2, i32* %119)
  %121 = call i32 @cl_assert_equal_i(i32 %118, i32 %120)
  %122 = load i32*, i32** %1, align 8
  %123 = call i32 @git_iterator_free(i32* %122)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_iterator_advance(%struct.TYPE_13__**, i32*) #2

declare dso_local i32 @cl_assert_equal_oid(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_oid_fromstr(%struct.TYPE_11__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
