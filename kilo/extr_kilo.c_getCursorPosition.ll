; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_getCursorPosition.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_getCursorPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\1B[6n\00", align 1
@ESC = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d;%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getCursorPosition(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @write(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %66

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %11, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %19, 31
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = call i32 @read(i32 %22, i8* %26, i32 1)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %41

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 82
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %17

41:                                               ; preds = %37, %29, %17
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %43
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %46 = load i8, i8* %45, align 16
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @ESC, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 91
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %41
  store i32 -1, i32* %5, align 4
  br label %66

57:                                               ; preds = %51
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @sscanf(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %66

65:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %64, %56, %15
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
