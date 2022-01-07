; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_creaper.c_Reaper_init.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_creaper.c_Reaper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i32* }

@Reaper_init.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"check_interval\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"idle_timeout\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"|OOO\00", align 1
@default_check_interval = common dso_local global i32* null, align 8
@DEFAULT_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"check_interval %ld\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"idle_timeout %ld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"_loop\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"call_later\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"_connections\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*)* @Reaper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Reaper_init(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = call i32 @PyArg_ParseTupleAndKeywords(i32* %11, i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @Reaper_init.kwlist, i64 0, i64 0), i32** %9, i32** %14, i32** %10)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %89

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i32*, i32** @default_check_interval, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @Py_INCREF(i32* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @PyLong_AsLong(i32* %37)
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @DEFAULT_IDLE_TIMEOUT, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  br label %53

48:                                               ; preds = %30
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @PyLong_AsLong(i32* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @PyLong_AsLong(i32* %62)
  %64 = call i32 @debug_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @debug_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %9, align 8
  %70 = call i8* @PyObject_GetAttrString(i32* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** %7, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %53
  br label %89

74:                                               ; preds = %53
  %75 = load i32*, i32** %7, align 8
  %76 = call i8* @PyObject_GetAttrString(i32* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = icmp ne i8* %76, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %89

81:                                               ; preds = %74
  %82 = load i32*, i32** %9, align 8
  %83 = call i8* @PyObject_GetAttrString(i32* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = icmp ne i8* %83, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %89

88:                                               ; preds = %81
  br label %90

89:                                               ; preds = %87, %80, %73, %17
  store i32 -1, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @Py_XDECREF(i32* %91)
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i32**, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @PyLong_AsLong(i32*) #1

declare dso_local i32 @debug_print(i8*, i32) #1

declare dso_local i8* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
