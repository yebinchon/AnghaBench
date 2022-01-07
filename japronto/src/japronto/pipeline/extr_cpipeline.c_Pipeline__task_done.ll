; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/pipeline/extr_cpipeline.c_Pipeline__task_done.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/pipeline/extr_cpipeline.c_Pipeline__task_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32 (i32, i32*)* }

@Py_True = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"done\00", align 1
@Py_False = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*)* @Pipeline__task_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Pipeline__task_done(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** @Py_True, align 8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %6, align 8
  br label %18

18:                                               ; preds = %87, %2
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = icmp ult i32* %19, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %18
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %30 = load i32*, i32** @Py_True, align 8
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @PipelineEntry_is_task(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @PipelineEntry_get_task(i32 %37)
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @PyObject_GetAttrString(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %40, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %72

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = bitcast i32* %44 to i32 (i32, i32*)*
  %46 = call i32* (i32 (i32, i32*)*, i32, ...) @PyObject_CallFunctionObjArgs(i32 (i32, i32*)* %45, i32 0)
  store i32* %46, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %72

49:                                               ; preds = %43
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** @Py_False, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32*, i32** @Py_False, align 8
  store i32* %54, i32** %5, align 8
  br label %73

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i32 (i32, i32*)*, i32 (i32, i32*)** %58, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 %59(i32 %61, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %72

68:                                               ; preds = %56
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PipelineEntry_DECREF(i32 %70)
  br label %73

72:                                               ; preds = %67, %48, %42
  store i32* null, i32** %5, align 8
  br label %73

73:                                               ; preds = %72, %68, %53
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @Py_XDECREF(i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @Py_XDECREF(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %111

81:                                               ; preds = %73
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** @Py_False, align 8
  %84 = icmp eq i32* %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %90

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %6, align 8
  br label %18

90:                                               ; preds = %85, %18
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = ptrtoint i32* %91 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = call i64 @PIPELINE_EMPTY(%struct.TYPE_4__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %90
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @Py_DECREF(i32* %108)
  br label %110

110:                                              ; preds = %105, %90
  br label %112

111:                                              ; preds = %80
  store i32* null, i32** %5, align 8
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @Py_XINCREF(i32* %113)
  %115 = load i32*, i32** %5, align 8
  ret i32* %115
}

declare dso_local i64 @PipelineEntry_is_task(i32) #1

declare dso_local i32* @PipelineEntry_get_task(i32) #1

declare dso_local i32* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i32* @PyObject_CallFunctionObjArgs(i32 (i32, i32*)*, i32, ...) #1

declare dso_local i32 @PipelineEntry_DECREF(i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @PIPELINE_EMPTY(%struct.TYPE_4__*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_XINCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
