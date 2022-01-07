; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoModuleLoadModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoModuleLoadModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (i8*, i32*, i32)*, %struct.TYPE_9__* (i8*, i32, i32*, i32)* }

@PICO_PMV_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"remap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @PicoModuleLoadModel(%struct.TYPE_8__* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64 (i8*, i32*, i32)*, i64 (i8*, i32*, i32)** %16, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i64 %17(i8* %18, i32* %19, i32 %20)
  %22 = load i64, i64* @PICO_PMV_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__* (i8*, i32, i32*, i32)*, %struct.TYPE_9__* (i8*, i32, i32*, i32)** %26, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.TYPE_9__* %27(i8* %28, i32 %29, i32* %30, i32 %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %14, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %34 = icmp eq %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %67

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %41 = call i8* @PicoGetModelFileName(%struct.TYPE_9__* %40)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %36
  %46 = load i8*, i8** %12, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %47, 20
  %49 = call i8* @_pico_alloc(i64 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @strcpy(i8* %53, i8* %54)
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @_pico_setfext(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @PicoRemapModel(%struct.TYPE_9__* %58, i8* %59)
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @_pico_free(i8* %61)
  br label %63

63:                                               ; preds = %52, %45
  br label %64

64:                                               ; preds = %63, %36
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %6, align 8
  br label %67

66:                                               ; preds = %5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %67

67:                                               ; preds = %66, %64, %35
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %68
}

declare dso_local i8* @PicoGetModelFileName(%struct.TYPE_9__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @_pico_alloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @_pico_setfext(i8*, i8*) #1

declare dso_local i32 @PicoRemapModel(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @_pico_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
