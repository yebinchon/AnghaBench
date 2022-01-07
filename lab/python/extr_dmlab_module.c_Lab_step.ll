; ModuleID = '/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_step.c'
source_filename = "/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)*, i64 (i32, i32, double*)*, i32 (i32)*, i32 (i32, i32*)* }

@.str = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"num_steps\00", align 1
@__const.Lab_step.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"O!|i\00", align 1
@PyArray_Type = common dso_local global i32 0, align 4
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Environment in wrong status to advance.\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"action must have shape (%i)\00", align 1
@NPY_INT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"action must have dtype np.intc\00", align 1
@EnvCApi_EnvironmentStatus_Error = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to advance environment \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @Lab_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Lab_step(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8*], align 16
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %17 = bitcast [3 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([3 x i8*]* @__const.Lab_step.kwlist to i8*), i64 24, i1 false)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %21 = call i32 @PyArg_ParseTupleAndKeywords(i32* %18, i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %20, i32* @PyArray_Type, i32** %9, i32* %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %116

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = call i32 @is_running(%struct.TYPE_5__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @PyExc_RuntimeError, align 4
  %30 = call i32 @PyErr_SetString(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %116

31:                                               ; preds = %24
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %13, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %37(i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @PyArray_NDIM(i32* %42)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %50, label %45

45:                                               ; preds = %31
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @PyArray_DIM(i32* %46, i32 0)
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %31
  %51 = load i32, i32* @PyExc_ValueError, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @PyErr_Format(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  store i32* null, i32** %4, align 8
  br label %116

54:                                               ; preds = %45
  %55 = load i32*, i32** %13, align 8
  %56 = call i64 @PyArray_TYPE(i32* %55)
  %57 = load i64, i64* @NPY_INT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @PyExc_ValueError, align 4
  %61 = call i32 @PyErr_SetString(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %116

62:                                               ; preds = %54
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32 (i32, i32*)*, i32 (i32, i32*)** %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = call i64 @PyArray_DATA(i32* %71)
  %73 = inttoptr i64 %72 to i32*
  %74 = call i32 %67(i32 %70, i32* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64 (i32, i32, double*)*, i64 (i32, i32, double*)** %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 %79(i32 %82, i32 %83, double* %12)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @EnvCApi_EnvironmentStatus_Error, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %62
  %98 = load i32, i32* @PyExc_ValueError, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32 (i32)*, i32 (i32)** %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 %103(i32 %106)
  %108 = call i32 @PyErr_Format(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  store i32* null, i32** %4, align 8
  br label %116

109:                                              ; preds = %62
  %110 = call i32* (...) @PyErr_Occurred()
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32* null, i32** %4, align 8
  br label %116

113:                                              ; preds = %109
  %114 = load double, double* %12, align 8
  %115 = call i32* @PyFloat_FromDouble(double %114)
  store i32* %115, i32** %4, align 8
  br label %116

116:                                              ; preds = %113, %112, %97, %59, %50, %28, %23
  %117 = load i32*, i32** %4, align 8
  ret i32* %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*, i32**, i32*) #2

declare dso_local i32 @is_running(%struct.TYPE_5__*) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local i32 @PyArray_DIM(i32*, i32) #2

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #2

declare dso_local i64 @PyArray_TYPE(i32*) #2

declare dso_local i64 @PyArray_DATA(i32*) #2

declare dso_local i32* @PyErr_Occurred(...) #2

declare dso_local i32* @PyFloat_FromDouble(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
