; ModuleID = '/home/carl/AnghaBench/git/extr_usage.c_fmt_with_err.c'
source_filename = "/home/carl/AnghaBench/git/extr_usage.c_fmt_with_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*)* @fmt_with_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmt_with_err(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @errno, align 4
  %12 = call i8* @strerror(i32 %11)
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %53, %40, %3
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 255
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ]
  br i1 %26, label %27, label %54

27:                                               ; preds = %25
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %36
  store i8 %33, i8* %37, align 1
  %38 = sext i8 %33 to i32
  %39 = icmp ne i32 %38, 37
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %13

41:                                               ; preds = %27
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 255
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %48
  store i8 37, i8* %49, align 1
  br label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %10, align 4
  br label %54

53:                                               ; preds = %45
  br label %13

54:                                               ; preds = %50, %25
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %62 = call i32 @snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
