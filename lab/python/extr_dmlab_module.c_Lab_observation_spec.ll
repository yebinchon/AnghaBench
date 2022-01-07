; ModuleID = '/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_observation_spec.c'
source_filename = "/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_observation_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (i32, i32)*, i32 (i32, i32, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i64 }

@EnvCApi_ObservationString = common dso_local global i64 0, align 8
@PyString_Type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"{s:s,s:N,s:O}\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Unable to populate list\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Invalid observation spec.\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Unable to populate tuple\00", align 1
@PyUnicode_Type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @Lab_observation_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Lab_observation_spec(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %21(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32* @PyList_New(i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %3, align 8
  br label %144

32:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %139, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %142

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32 (i32, i32, %struct.TYPE_8__*)*, i32 (i32, i32, %struct.TYPE_8__*)** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 %42(i32 %45, i32 %46, %struct.TYPE_8__* %9)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EnvCApi_ObservationString, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %37
  store i32* @PyString_Type, i32** %10, align 8
  %53 = call i32* @PyTuple_New(i32 0)
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 %60(i32 %63, i32 %64)
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @Py_BuildValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %67)
  %69 = call i64 @PyList_SetItem(i32* %54, i32 %55, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load i32, i32* @PyExc_RuntimeError, align 4
  %73 = call i32 @PyErr_SetString(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %144

74:                                               ; preds = %52
  br label %139

75:                                               ; preds = %37
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ObservationType2typenum(i64 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @PyExc_RuntimeError, align 4
  %83 = call i32 @PyErr_SetString(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %144

84:                                               ; preds = %75
  %85 = load i32, i32* %13, align 4
  %86 = call %struct.TYPE_9__* @PyArray_DescrFromType(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32* @PyTuple_New(i32 %91)
  store i32* %92, i32** %11, align 8
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %114, %84
  %94 = load i32, i32* %14, align 4
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %14, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PyInt_FromLong(i32 %106)
  %108 = call i64 @PyTuple_SetItem(i32* %99, i32 %100, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load i32, i32* @PyExc_RuntimeError, align 4
  %112 = call i32 @PyErr_SetString(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %144

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %93

117:                                              ; preds = %93
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32 (i32, i32)*, i32 (i32, i32)** %123, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 %124(i32 %127, i32 %128)
  %130 = load i32*, i32** %11, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @Py_BuildValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %131)
  %133 = call i64 @PyList_SetItem(i32* %118, i32 %119, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %117
  %136 = load i32, i32* @PyExc_RuntimeError, align 4
  %137 = call i32 @PyErr_SetString(i32 %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %144

138:                                              ; preds = %117
  br label %139

139:                                              ; preds = %138, %74
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %33

142:                                              ; preds = %33
  %143 = load i32*, i32** %8, align 8
  store i32* %143, i32** %3, align 8
  br label %144

144:                                              ; preds = %142, %135, %110, %81, %71, %30
  %145 = load i32*, i32** %3, align 8
  ret i32* %145
}

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i64 @PyList_SetItem(i32*, i32, i32) #1

declare dso_local i32 @Py_BuildValue(i8*, i8*, i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @ObservationType2typenum(i64) #1

declare dso_local %struct.TYPE_9__* @PyArray_DescrFromType(i32) #1

declare dso_local i64 @PyTuple_SetItem(i32*, i32, i32) #1

declare dso_local i32 @PyInt_FromLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
