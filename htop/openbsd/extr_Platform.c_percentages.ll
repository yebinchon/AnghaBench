; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_percentages.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_percentages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*, i64*, i64*)* @percentages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @percentages(i32 %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %12, align 8
  %16 = load i64*, i64** %10, align 8
  store i64* %16, i64** %13, align 8
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %47, %5
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %23, %25
  store i64 %26, i64* %11, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i64, i64* @INT64_MAX, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %29, %31
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %28, %21
  %37 = load i64, i64* %11, align 8
  %38 = load i64*, i64** %13, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %13, align 8
  store i64 %37, i64* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add nsw i64 %40, %37
  store i64 %41, i64* %12, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %8, align 8
  %44 = load i64, i64* %42, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 1, i64* %12, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i64, i64* %12, align 8
  %56 = sdiv i64 %55, 2
  store i64 %56, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %72, %54
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i64*, i64** %10, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %10, align 8
  %64 = load i64, i64* %62, align 8
  %65 = mul nsw i64 %64, 1000
  %66 = load i64, i64* %14, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* %12, align 8
  %69 = sdiv i64 %67, %68
  %70 = load i64*, i64** %7, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %7, align 8
  store i64 %69, i64* %70, align 8
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %57

75:                                               ; preds = %57
  %76 = load i64, i64* %12, align 8
  %77 = trunc i64 %76 to i32
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
