; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/pipeline/extr_cpipeline.c_Pipeline_cancel.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/pipeline/extr_cpipeline.c_Pipeline_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"cancel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Pipeline_cancel(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = bitcast %struct.TYPE_3__* %8 to i8*
  store i8* %9, i8** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %4, align 8
  br label %18

18:                                               ; preds = %59, %1
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = icmp ult i32* %19, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PipelineEntry_is_task(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %59

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @PipelineEntry_get_task(i32 %37)
  store i32* %38, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32* @PyObject_GetAttrString(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %40, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %51

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = call i32* @PyObject_CallFunctionObjArgs(i32* %44, i32* null)
  store i32* %45, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @Py_DECREF(i32* %49)
  br label %52

51:                                               ; preds = %47, %42
  store i8* null, i8** %3, align 8
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @Py_XDECREF(i32* %53)
  %55 = load i8*, i8** %3, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %4, align 8
  br label %18

62:                                               ; preds = %57, %18
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

declare dso_local i32 @PipelineEntry_is_task(i32) #1

declare dso_local i32* @PipelineEntry_get_task(i32) #1

declare dso_local i32* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i32* @PyObject_CallFunctionObjArgs(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
