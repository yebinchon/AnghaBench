; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_example4.c_main.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_example4.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@DECNUMDIGITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Please supply two numbers to add.\0A\00", align 1
@DEC_INIT_BASE = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@signalHandler = common dso_local global i32 0, align 4
@preserve = common dso_local global i32 0, align 4
@DEC_Errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Signal trapped [%s].\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s + %s => %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @DECNUMDIGITS, align 4
  %14 = add nsw i32 %13, 14
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

22:                                               ; preds = %2
  %23 = load i32, i32* @DEC_INIT_BASE, align 4
  %24 = call i32 @decContextDefault(%struct.TYPE_6__* %8, i32 %23)
  %25 = load i32, i32* @SIGFPE, align 4
  %26 = load i32, i32* @signalHandler, align 4
  %27 = call i32 @signal(i32 %25, i32 %26)
  %28 = load i32, i32* @preserve, align 4
  %29 = call i32 @setjmp(i32 %28) #4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @DEC_Errors, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = call i8* @decContextStatusToString(%struct.TYPE_6__* %8)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

39:                                               ; preds = %22
  %40 = load i32, i32* @DECNUMDIGITS, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @decNumberFromString(i32* %6, i8* %44, %struct.TYPE_6__* %8)
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @decNumberFromString(i32* %7, i8* %48, %struct.TYPE_6__* %8)
  %50 = call i32 @decNumberAdd(i32* %6, i32* %6, i32* %7, %struct.TYPE_6__* %8)
  %51 = call i32 @decNumberToString(i32* %6, i8* %17)
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %57, i8* %17)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %39, %32, %20
  %60 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @decContextDefault(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @signal(i32, i32) #2

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #3

declare dso_local i8* @decContextStatusToString(%struct.TYPE_6__*) #2

declare dso_local i32 @decNumberFromString(i32*, i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @decNumberAdd(i32*, i32*, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @decNumberToString(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
