; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_cprotocol.c_Protocol_connection_made.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_cprotocol.c_Protocol_connection_made.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i32*, i8*, i8*, i32*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"writelines\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"_connections\00", align 1
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@Py_False = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @Protocol_connection_made to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Protocol_connection_made(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  store i32* %7, i32** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @Py_INCREF(i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @PyObject_GetAttrString(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = icmp ne i8* %15, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %45

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @PyObject_GetAttrString(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = icmp ne i8* %22, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %45

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = call i8* @PyObject_GetAttrString(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %45

35:                                               ; preds = %27
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = bitcast %struct.TYPE_3__* %37 to i32*
  %39 = call i32 @PySet_Add(i32* %36, i32* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %46

45:                                               ; preds = %41, %34, %26, %19
  store i32* null, i32** %3, align 8
  br label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @Py_XDECREF(i32* %47)
  %49 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i32*, i32** %3, align 8
  ret i32* %51
}

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i8* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i32 @PySet_Add(i32*, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
