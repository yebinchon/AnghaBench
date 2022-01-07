; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_list_contained.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_list_contained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_contained(i64* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %61, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  store i32 -1, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i64*, i64** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  br label %26

26:                                               ; preds = %47, %19
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %32, %33
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %14, align 4
  %36 = load i64, i64* %13, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %12, align 4
  br label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %26

48:                                               ; preds = %26
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %48
  store i32 0, i32* %5, align 4
  br label %65

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %15

64:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
