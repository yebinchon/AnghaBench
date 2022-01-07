; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xemit.c_def_ff.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xemit.c_def_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*)* @def_ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @def_ff(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %5
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isalpha(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 95
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 36
  br i1 %28, label %29, label %58

29:                                               ; preds = %24, %19, %14
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 0, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub nsw i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %39, %36
  %48 = phi i1 [ false, %36 ], [ %46, %39 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %8, align 8
  br label %36

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %6, align 8
  br label %59

58:                                               ; preds = %24, %5
  store i64 -1, i64* %6, align 8
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
