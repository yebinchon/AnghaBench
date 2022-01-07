; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_ksa.c_getCounts.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_ksa.c_getCounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64, i64, i32)* @getCounts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getCounts(i8* %0, i64* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %21, %5
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %11, align 8
  br label %13

24:                                               ; preds = %13
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @chr(i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %12, align 8
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i64 [ %36, %35 ], [ 0, %37 ]
  %40 = getelementptr inbounds i64, i64* %32, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %25

46:                                               ; preds = %25
  ret void
}

declare dso_local i64 @chr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
