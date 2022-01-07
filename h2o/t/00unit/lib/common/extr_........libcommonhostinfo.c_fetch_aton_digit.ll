; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonhostinfo.c_fetch_aton_digit.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonhostinfo.c_fetch_aton_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @fetch_aton_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fetch_aton_digit(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %28, %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sle i32 48, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 57
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi i1 [ false, %10 ], [ %25, %24 ]
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 10
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %30, %34
  %36 = sub nsw i32 %35, 48
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %10

39:                                               ; preds = %26
  %40 = load i64, i64* %8, align 8
  %41 = icmp ule i64 1, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = icmp ule i64 %43, 3
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %39
  store i8* null, i8** %4, align 8
  br label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 255
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8* null, i8** %4, align 8
  br label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %7, align 8
  store i8 %52, i8* %53, align 1
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %50, %49, %45
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
