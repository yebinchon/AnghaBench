; ModuleID = '/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_make_observation.c'
source_filename = "/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_make_observation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i64*, i32 }

@EnvCApi_ObservationString = common dso_local global i64 0, align 8
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid observation spec.\00", align 1
@EnvCApi_ObservationDoubles = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*)* @make_observation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_observation(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EnvCApi_ObservationString, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @PyString_FromStringAndSize(i32 %20, i64 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = call i32 (...) @PyErr_NoMemory()
  br label %34

34:                                               ; preds = %32, %16
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %2, align 8
  br label %124

36:                                               ; preds = %1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ObservationType2typenum(i64 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @PyExc_RuntimeError, align 4
  %46 = call i32 @PyErr_SetString(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %124

47:                                               ; preds = %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64* @calloc(i32 %51, i32 8)
  store i64* %52, i64** %6, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = icmp eq i64* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %2, align 8
  br label %124

57:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @PyArray_SimpleNew(i32 %85, i64* %86, i32 %87)
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %8, align 8
  %90 = load i64*, i64** %6, align 8
  %91 = call i32 @free(i64* %90)
  %92 = load i32*, i32** %8, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %2, align 8
  br label %124

96:                                               ; preds = %81
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @EnvCApi_ObservationDoubles, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  br label %115

109:                                              ; preds = %96
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  br label %115

115:                                              ; preds = %109, %103
  %116 = phi i8* [ %108, %103 ], [ %114, %109 ]
  store i8* %116, i8** %9, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @PyArray_BYTES(i32* %117)
  %119 = load i8*, i8** %9, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @PyArray_NBYTES(i32* %120)
  %122 = call i32 @memcpy(i32 %118, i8* %119, i32 %121)
  %123 = load i32*, i32** %8, align 8
  store i32* %123, i32** %2, align 8
  br label %124

124:                                              ; preds = %115, %94, %55, %44, %34
  %125 = load i32*, i32** %2, align 8
  ret i32* %125
}

declare dso_local i32 @PyString_FromStringAndSize(i32, i64) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @ObservationType2typenum(i64) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64* @calloc(i32, i32) #1

declare dso_local i64 @PyArray_SimpleNew(i32, i64*, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @PyArray_BYTES(i32*) #1

declare dso_local i32 @PyArray_NBYTES(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
