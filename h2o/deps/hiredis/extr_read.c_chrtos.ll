; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_read.c_chrtos.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_read.c_chrtos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"\22\\%c\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\22\\n\22\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\22\\r\22\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\22\\t\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\22\\a\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\22\\b\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\22%c\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\22\\x%02x\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8)* @chrtos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chrtos(i8* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  store i64 0, i64* %7, align 8
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %36 [
    i32 92, label %10
    i32 34, label %10
    i32 10, label %16
    i32 13, label %20
    i32 9, label %24
    i32 7, label %28
    i32 8, label %32
  ]

10:                                               ; preds = %3, %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i64 %15, i64* %7, align 8
  br label %53

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %19, i64* %7, align 8
  br label %53

20:                                               ; preds = %3
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i64 %23, i64* %7, align 8
  br label %53

24:                                               ; preds = %3
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i64 %27, i64* %7, align 8
  br label %53

28:                                               ; preds = %3
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i64 %31, i64* %7, align 8
  br label %53

32:                                               ; preds = %3
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i64 %35, i64* %7, align 8
  br label %53

36:                                               ; preds = %3
  %37 = load i8, i8* %6, align 1
  %38 = call i32 @isprint(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  store i64 %45, i64* %7, align 8
  br label %52

46:                                               ; preds = %36
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %32, %28, %24, %20, %16, %10
  %54 = load i64, i64* %7, align 8
  ret i64 %54
}

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
