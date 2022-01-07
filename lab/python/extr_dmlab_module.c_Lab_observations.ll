; ModuleID = '/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_observations.c'
source_filename = "/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_observations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, i32, i32*)* }

@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Environment in wrong status for call to observations()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @Lab_observations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Lab_observations(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = call i32 @is_running(%struct.TYPE_5__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @PyExc_RuntimeError, align 4
  %18 = call i32 @PyErr_SetString(i32 %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %82

19:                                               ; preds = %2
  %20 = call i32* (...) @PyDict_New()
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %3, align 8
  br label %82

25:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %77, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %37(i32 %40, i32 %47, i32* %8)
  %49 = call i32* @make_observation(i32* %8)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @Py_DECREF(i32* %53)
  store i32* null, i32** %3, align 8
  br label %82

55:                                               ; preds = %32
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %61(i32 %64, i32 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @PyDict_SetItemString(i32* %56, i32 %72, i32* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @Py_DECREF(i32* %75)
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %26

80:                                               ; preds = %26
  %81 = load i32*, i32** %7, align 8
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %80, %52, %23, %16
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i32 @is_running(%struct.TYPE_5__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32* @make_observation(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
