; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_is_scissors_line.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_is_scissors_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c">8\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"8<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">%\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%<\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_scissors_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_scissors_line(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %3, align 8
  br label %12

12:                                               ; preds = %68, %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @isspace(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %21
  br label %68

30:                                               ; preds = %16
  %31 = load i8*, i8** %3, align 8
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %68

44:                                               ; preds = %36
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @memcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @memcmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @memcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @memcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56, %52, %48, %44
  store i32 1, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %4, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %3, align 8
  br label %68

67:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %60, %41, %29
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %3, align 8
  br label %12

71:                                               ; preds = %12
  %72 = load i8*, i8** %6, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = add nsw i64 %82, 1
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %86

85:                                               ; preds = %74, %71
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp sle i32 8, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %94, 3
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %98, 2
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %99, %100
  br label %102

102:                                              ; preds = %97, %92, %89, %86
  %103 = phi i1 [ false, %92 ], [ false, %89 ], [ false, %86 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  ret i32 %104
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
