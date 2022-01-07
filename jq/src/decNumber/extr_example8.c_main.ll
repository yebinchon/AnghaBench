; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_example8.c_main.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_example8.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECQUAD_String = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Please supply two numbers for power(2*a, b).\0A\00", align 1
@DEC_INIT_DECQUAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"power(2*%s, %s) => %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @DECQUAD_String, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load i32, i32* @DEC_INIT_DECQUAD, align 4
  %23 = call i32 @decContextDefault(i32* %9, i32 %22)
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @decQuadFromString(i32* %6, i8* %26, i32* %9)
  %28 = call i32 @decQuadAdd(i32* %6, i32* %6, i32* %6, i32* %9)
  %29 = call i32 @decQuadToNumber(i32* %6, i32* %7)
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @decNumberFromString(i32* %8, i8* %32, i32* %9)
  %34 = call i32 @decNumberPower(i32* %7, i32* %7, i32* %8, i32* %9)
  %35 = call i32 @decQuadFromNumber(i32* %6, i32* %7, i32* %9)
  %36 = call i32 @decQuadToString(i32* %6, i8* %16)
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %42, i8* %16)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %44

44:                                               ; preds = %21, %19
  %45 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @decContextDefault(i32*, i32) #2

declare dso_local i32 @decQuadFromString(i32*, i8*, i32*) #2

declare dso_local i32 @decQuadAdd(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @decQuadToNumber(i32*, i32*) #2

declare dso_local i32 @decNumberFromString(i32*, i8*, i32*) #2

declare dso_local i32 @decNumberPower(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @decQuadFromNumber(i32*, i32*, i32*) #2

declare dso_local i32 @decQuadToString(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
