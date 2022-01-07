; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_heap_sift.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_heap_sift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64)* @heap_sift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_sift(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load i64*, i64** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %3, %63
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %5, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %74

23:                                               ; preds = %15
  %24 = load i64*, i64** %4, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %24, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %5, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %23
  %37 = load i64*, i64** %4, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %37, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load i64*, i64** %4, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %49, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %48, %36, %23
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %74

63:                                               ; preds = %58
  %64 = load i64*, i64** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %7, align 4
  br label %15

74:                                               ; preds = %62, %22
  %75 = load i64, i64* %6, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %75, i64* %79, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
