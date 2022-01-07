; ModuleID = '/home/carl/AnghaBench/htop/extr_Meter.c_Meter_humanUnit.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Meter.c_Meter_humanUnit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"KMGTPEZY\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%.*f%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Meter_humanUnit(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i64 1, i64* %8, align 8
  store i32 1, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i64, i64* %5, align 8
  %14 = udiv i64 %13, 1024
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %30

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %30

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = mul i64 %26, 1024
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  br label %12

30:                                               ; preds = %24, %17
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 75
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %11, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = mul i32 %41, 10
  store i32 %42, i32* %10, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = udiv i64 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %54

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %11, align 4
  br label %37

54:                                               ; preds = %49, %37
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i64, i64* %5, align 8
  %59 = uitofp i64 %58 to double
  %60 = load i64, i64* %8, align 8
  %61 = uitofp i64 %60 to double
  %62 = fdiv double %59, %61
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @snprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %57, double %62, i8 signext %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, double, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
