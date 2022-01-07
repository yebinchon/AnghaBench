; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_DefineSymbol.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_DefineSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__*, i32, i32 }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@passNumber = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%i\00", align 1
@currentFileIndex = common dso_local global i32 0, align 4
@symtable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Multiple definitions for %s\0A\00", align 1
@currentSegment = common dso_local global i32 0, align 4
@symbols = common dso_local global %struct.TYPE_6__* null, align 8
@lastSymbol = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @DefineSymbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DefineSymbol(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @passNumber, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 36
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @currentFileIndex, align 4
  %26 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  store i8* %13, i8** %3, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @HashString(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @symtable, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @hashtable_symbol_exists(i32 %30, i32 %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @CodeError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 1, i32* %9, align 4
  br label %69

38:                                               ; preds = %27
  %39 = call %struct.TYPE_6__* @malloc(i32 24)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %5, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %41, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @copystring(i8* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @currentSegment, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @symtable, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = call i32 @hashtable_add(i32 %55, i32 %56, %struct.TYPE_6__* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symbols, align 8
  %60 = icmp eq %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %38
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** @symbols, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** @lastSymbol, align 8
  br label %68

63:                                               ; preds = %38
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lastSymbol, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** @lastSymbol, align 8
  br label %68

68:                                               ; preds = %63, %61
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %35, %16
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %9, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @HashString(i8*) #2

declare dso_local i64 @hashtable_symbol_exists(i32, i32, i8*) #2

declare dso_local i32 @CodeError(i8*, i8*) #2

declare dso_local %struct.TYPE_6__* @malloc(i32) #2

declare dso_local i32 @copystring(i8*) #2

declare dso_local i32 @hashtable_add(i32, i32, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
