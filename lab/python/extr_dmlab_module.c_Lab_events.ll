; ModuleID = '/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_events.c'
source_filename = "/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32, i32, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32, i32, i32* }

@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Environment in wrong status for call to events()\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Environment generated invalid event id. Event id(%d) must be in range [0, %d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @Lab_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Lab_events(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %22 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %2, %2, %2
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @PyExc_RuntimeError, align 4
  %24 = call i32 @PyErr_SetString(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %149

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %30(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %39(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32* @PyList_New(i32 %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %25
  %49 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %3, align 8
  br label %149

50:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %144, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %147

55:                                               ; preds = %51
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32 (i32, i32, %struct.TYPE_7__*)*, i32 (i32, i32, %struct.TYPE_7__*)** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 %60(i32 %63, i32 %64, %struct.TYPE_7__* %11)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 0, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69, %55
  %75 = load i32, i32* @PyExc_RuntimeError, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @PyErr_Format(i32 %75, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @Py_DECREF(i32* %80)
  store i32* null, i32** %3, align 8
  br label %149

82:                                               ; preds = %69
  %83 = call i32* @PyTuple_New(i32 2)
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32 (i32, i32)*, i32 (i32, i32)** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %89(i32 %92, i32 %94)
  %96 = call i32 @PyString_FromString(i32 %95)
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @PyTuple_SetItem(i32* %84, i32 0, i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32* @PyList_New(i32 %101)
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %82
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @Py_DECREF(i32* %106)
  store i32* null, i32** %3, align 8
  br label %149

108:                                              ; preds = %82
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %133, %108
  %110 = load i32, i32* %14, align 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32* @make_observation(i32* %119)
  store i32* %120, i32** %15, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @Py_DECREF(i32* %124)
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @Py_DECREF(i32* %126)
  store i32* null, i32** %3, align 8
  br label %149

128:                                              ; preds = %114
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @PyList_SetItem(i32* %129, i32 %130, i32* %131)
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %109

136:                                              ; preds = %109
  %137 = load i32*, i32** %12, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @PyTuple_SetItem(i32* %137, i32 1, i32* %138)
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @PyList_SetItem(i32* %140, i32 %141, i32* %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %51

147:                                              ; preds = %51
  %148 = load i32*, i32** %9, align 8
  store i32* %148, i32** %3, align 8
  br label %149

149:                                              ; preds = %147, %123, %105, %74, %48, %22
  %150 = load i32*, i32** %3, align 8
  ret i32* %150
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @PyTuple_SetItem(i32*, i32, i32*) #1

declare dso_local i32 @PyString_FromString(i32) #1

declare dso_local i32* @make_observation(i32*) #1

declare dso_local i32 @PyList_SetItem(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
