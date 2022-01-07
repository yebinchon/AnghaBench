; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_GetTokenAppend.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_GetTokenAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i64 0, align 8
@token = common dso_local global i8* null, align 8
@tabDepth = common dso_local global i32 0, align 4
@oldScriptLine = common dso_local global i64 0, align 8
@scriptline = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetTokenAppend(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @GetToken(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @qfalse, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** @token, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %13, %2
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %69

24:                                               ; preds = %16
  %25 = load i8*, i8** @token, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 125
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @tabDepth, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @tabDepth, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i64, i64* @oldScriptLine, align 8
  %35 = load i64, i64* @scriptline, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcat(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %47, %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @tabDepth, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcat(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %40

50:                                               ; preds = %40
  br label %54

51:                                               ; preds = %33
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcat(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %50
  %55 = load i64, i64* @scriptline, align 8
  store i64 %55, i64* @oldScriptLine, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** @token, align 8
  %58 = call i32 @strcat(i8* %56, i8* %57)
  %59 = load i8*, i8** @token, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 123
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @tabDepth, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @tabDepth, align 4
  br label %67

67:                                               ; preds = %64, %54
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %67, %22
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i64 @GetToken(i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
