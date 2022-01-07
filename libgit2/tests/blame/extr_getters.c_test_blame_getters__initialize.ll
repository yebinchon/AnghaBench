; ModuleID = '/home/carl/AnghaBench/libgit2/tests/blame/extr_getters.c_test_blame_getters__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/blame/extr_getters.c_test_blame_getters__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_12__, i32*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@GIT_BLAME_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@g_blame = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_blame_getters__initialize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [5 x %struct.TYPE_14__], align 16
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = load i32, i32* @GIT_BLAME_OPTIONS_INIT, align 4
  store i32 %5, i32* %2, align 4
  %6 = getelementptr inbounds [5 x %struct.TYPE_14__], [5 x %struct.TYPE_14__]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i32 3, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 3
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 4
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 5
  store i32 ptrtoint ([2 x i8]* @.str to i32), i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 6
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 7
  %15 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 4, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 8
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 9
  %18 = bitcast %struct.TYPE_10__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 4, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i64 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 3, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store i8* inttoptr (i64 4 to i8*), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 5
  store i32 ptrtoint ([2 x i8]* @.str.1 to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 6
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 7
  %28 = bitcast %struct.TYPE_12__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 4, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 8
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 9
  %31 = bitcast %struct.TYPE_10__* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 4, i1 false)
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i64 1
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i32 3, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  store i8* inttoptr (i64 7 to i8*), i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 4
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  store i32 ptrtoint ([2 x i8]* @.str.2 to i32), i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 6
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 7
  %41 = bitcast %struct.TYPE_12__* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 4, i1 false)
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 9
  %44 = bitcast %struct.TYPE_10__* %43 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %44, i8 0, i64 4, i1 false)
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store i32 3, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  store i8* inttoptr (i64 10 to i8*), i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 5
  store i32 ptrtoint ([2 x i8]* @.str.3 to i32), i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 6
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 7
  %54 = bitcast %struct.TYPE_12__* %53 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 4, i1 false)
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 8
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 9
  %57 = bitcast %struct.TYPE_10__* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %57, i8 0, i64 4, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i32 3, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  store i8* inttoptr (i64 13 to i8*), i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 4
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 5
  store i32 ptrtoint ([2 x i8]* @.str.4 to i32), i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 6
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 7
  %67 = bitcast %struct.TYPE_12__* %66 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %67, i8 0, i64 4, i1 false)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 8
  store i32* null, i32** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 9
  %70 = bitcast %struct.TYPE_10__* %69 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %70, i8 0, i64 4, i1 false)
  %71 = load i32, i32* %2, align 4
  %72 = call %struct.TYPE_15__* @git_blame__alloc(i32* null, i32 %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** @g_blame, align 8
  store i64 0, i64* %1, align 8
  br label %73

73:                                               ; preds = %101, %0
  %74 = load i64, i64* %1, align 8
  %75 = icmp ult i64 %74, 5
  br i1 %75, label %76, label %104

76:                                               ; preds = %73
  %77 = call %struct.TYPE_14__* @git__calloc(i32 1, i32 56)
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %4, align 8
  %78 = load i64, i64* %1, align 8
  %79 = getelementptr inbounds [5 x %struct.TYPE_14__], [5 x %struct.TYPE_14__]* %3, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %1, align 8
  %85 = getelementptr inbounds [5 x %struct.TYPE_14__], [5 x %struct.TYPE_14__]* %3, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @git__strdup(i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* %1, align 8
  %92 = getelementptr inbounds [5 x %struct.TYPE_14__], [5 x %struct.TYPE_14__]* %3, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_blame, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = call i32 @git_vector_insert(i32* %98, %struct.TYPE_14__* %99)
  br label %101

101:                                              ; preds = %76
  %102 = load i64, i64* %1, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %1, align 8
  br label %73

104:                                              ; preds = %73
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_15__* @git_blame__alloc(i32*, i32, i8*) #2

declare dso_local %struct.TYPE_14__* @git__calloc(i32, i32) #2

declare dso_local i32 @git__strdup(i32) #2

declare dso_local i32 @git_vector_insert(i32*, %struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
