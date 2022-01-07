; ModuleID = '/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_properties.c'
source_filename = "/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32*, i8*, i32)* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@__const.Lab_properties.kwlist = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"|s\00", align 1
@PropertyCallback = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"'%s' not listable.\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Internal error while listing key '%s'.\00", align 1
@PyExc_KeyError = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"'%s' not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @Lab_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Lab_properties(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %14 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([2 x i8*]* @__const.Lab_properties.kwlist to i8*), i64 16, i1 false)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %18 = call i32 @PyArg_ParseTupleAndKeywords(i32* %15, i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %17, i8** %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %56

21:                                               ; preds = %3
  %22 = call i32* (...) @PyDict_New()
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %4, align 8
  br label %56

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32*, i8*, i32)*, i32 (i32, i32*, i8*, i32)** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @PropertyCallback, align 4
  %39 = call i32 %32(i32 %35, i32* %36, i8* %37, i32 %38)
  switch i32 %39, label %51 [
    i32 128, label %40
    i32 129, label %42
    i32 131, label %46
    i32 130, label %50
  ]

40:                                               ; preds = %27
  %41 = load i32*, i32** %11, align 8
  store i32* %41, i32** %4, align 8
  br label %56

42:                                               ; preds = %27
  %43 = load i32, i32* @PyExc_TypeError, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @PyErr_Format(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %55

46:                                               ; preds = %27
  %47 = load i32, i32* @PyExc_TypeError, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @PyErr_Format(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  br label %55

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %27, %50
  %52 = load i32, i32* @PyExc_KeyError, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @PyErr_Format(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %46, %42
  store i32* null, i32** %4, align 8
  br label %56

56:                                               ; preds = %55, %40, %25, %20
  %57 = load i32*, i32** %4, align 8
  ret i32* %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i8**) #2

declare dso_local i32* @PyDict_New(...) #2

declare dso_local i32 @PyErr_NoMemory(...) #2

declare dso_local i32 @PyErr_Format(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
