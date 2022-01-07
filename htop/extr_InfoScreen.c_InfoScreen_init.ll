; ModuleID = '/home/carl/AnghaBench/htop/extr_InfoScreen.c_InfoScreen_init.c'
source_filename = "/home/carl/AnghaBench/htop/extr_InfoScreen.c_InfoScreen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@InfoScreenFunctions = common dso_local global i32 0, align 4
@InfoScreenKeys = common dso_local global i32 0, align 4
@InfoScreenEvents = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@ListItem = common dso_local global i32 0, align 4
@DEFAULT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @InfoScreen_init(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @InfoScreenFunctions, align 4
  %18 = load i32, i32* @InfoScreenKeys, align 4
  %19 = load i32, i32* @InfoScreenEvents, align 4
  %20 = call i32* @FunctionBar_new(i32 %17, i32 %18, i32 %19)
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %16, %5
  %22 = load i32, i32* @COLS, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ListItem, align 4
  %25 = call i32 @Class(i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call %struct.TYPE_9__* @Panel_new(i32 0, i32 1, i32 %22, i32 %23, i32 0, i32 %25, i32* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @IncSet_new(i32* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DEFAULT_SIZE, align 4
  %42 = call i32 @Vector_new(i32 %40, i32 1, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @Panel_setHeader(%struct.TYPE_9__* %47, i8* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %50
}

declare dso_local i32* @FunctionBar_new(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @Panel_new(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @Class(i32) #1

declare dso_local i32 @IncSet_new(i32*) #1

declare dso_local i32 @Vector_new(i32, i32, i32) #1

declare dso_local i32 @Panel_setHeader(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
