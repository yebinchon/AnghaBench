; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_cprotocol.c_Protocol_init.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_cprotocol.c_Protocol_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i64, i64 }

@Protocol_pipeline_ready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"_matcher\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"error_handler\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_loop\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"create_task\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"_log_request\00", align 1
@Py_True = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"default_request_logger\00", align 1
@Parser = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*)* @Protocol_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Protocol_init(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @Parser_init(i32* %11, %struct.TYPE_6__* %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %108

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 6
  %19 = load i32, i32* @Protocol_pipeline_ready, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = bitcast %struct.TYPE_6__* %20 to i32*
  %22 = call i32 @Pipeline_init(i32* %18, i32 %19, i32* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %108

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = call i32 @PyArg_ParseTuple(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %108

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @Py_INCREF(i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i8* @PyObject_GetAttrString(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  br label %108

48:                                               ; preds = %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i8* @PyObject_GetAttrString(i32* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  br label %108

60:                                               ; preds = %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i8* @PyObject_GetAttrString(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %108

69:                                               ; preds = %60
  %70 = load i32*, i32** %8, align 8
  %71 = call i8* @PyObject_GetAttrString(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %108

79:                                               ; preds = %69
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i8* @PyObject_GetAttrString(i32* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %108

87:                                               ; preds = %79
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** @Py_True, align 8
  %90 = icmp eq i32* %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i8* @PyObject_GetAttrString(i32* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = icmp ne i8* %95, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %108

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %87
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %109

108:                                              ; preds = %99, %86, %78, %68, %59, %47, %31, %24, %15
  store i32 -1, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %101
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @Py_XDECREF(i32* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @Py_XDECREF(i32* %112)
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @Parser_init(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @Pipeline_init(i32*, i32, i32*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i8* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
