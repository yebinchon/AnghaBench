; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_cprotocol.c_Protocol_connection_lost.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_cprotocol.c_Protocol_connection_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i32, i32, i32, i32 }

@Py_None = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"_connections\00", align 1
@Py_False = common dso_local global i32* null, align 8
@Py_True = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @Protocol_connection_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Protocol_connection_lost(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32*, i32** @Py_None, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  %12 = call i32 @Parser_feed_disconnect(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @PyObject_GetAttrString(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %36

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = bitcast %struct.TYPE_3__* %24 to i32*
  %26 = call i32 @PySet_Discard(i32* %23, i32* %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = call i32 @Pipeline_cancel(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %36

35:                                               ; preds = %29
  br label %37

36:                                               ; preds = %34, %28, %21, %14
  store i32* null, i32** %6, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @Py_XDECREF(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @Py_XINCREF(i32* %40)
  %42 = load i32*, i32** %6, align 8
  ret i32* %42
}

declare dso_local i32 @Parser_feed_disconnect(i32*) #1

declare dso_local i32* @PyObject_GetAttrString(i32, i8*) #1

declare dso_local i32 @PySet_Discard(i32*, i32*) #1

declare dso_local i32 @Pipeline_cancel(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @Py_XINCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
