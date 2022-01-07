; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.c_sdscatrepr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.c_sdscatrepr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdscatrepr(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @sdscatlen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %53, %3
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %6, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %37 [
    i32 92, label %17
    i32 34, label %17
    i32 10, label %22
    i32 13, label %25
    i32 9, label %28
    i32 7, label %31
    i32 8, label %34
  ]

17:                                               ; preds = %13, %13
  %18 = load i32, i32* %4, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @sdscatprintf(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 signext %20)
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @sdscatlen(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @sdscatlen(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @sdscatlen(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  store i32 %30, i32* %4, align 4
  br label %53

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @sdscatlen(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  store i32 %33, i32* %4, align 4
  br label %53

34:                                               ; preds = %13
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @sdscatlen(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %13
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @isprint(i8 signext %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @sdscatprintf(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8 signext %45)
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @sdscatprintf(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8 signext %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %34, %31, %28, %25, %22, %17
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  br label %9

56:                                               ; preds = %9
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @sdscatlen(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  ret i32 %58
}

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
