; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_hashset_ll_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_hashset_ll_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashset_ll = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashset_ll_get(%struct.hashset_ll* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashset_ll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.hashset_ll* %0, %struct.hashset_ll** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = load %struct.hashset_ll*, %struct.hashset_ll** %4, align 8
  %12 = getelementptr inbounds %struct.hashset_ll, %struct.hashset_ll* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = urem i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %5, align 8
  %16 = ashr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load %struct.hashset_ll*, %struct.hashset_ll** %4, align 8
  %19 = getelementptr inbounds %struct.hashset_ll, %struct.hashset_ll* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub i32 %20, 1
  %22 = urem i32 %17, %21
  %23 = add i32 1, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %53, %2
  %25 = load %struct.hashset_ll*, %struct.hashset_ll** %4, align 8
  %26 = getelementptr inbounds %struct.hashset_ll, %struct.hashset_ll* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.hashset_ll*, %struct.hashset_ll** %4, align 8
  %44 = getelementptr inbounds %struct.hashset_ll, %struct.hashset_ll* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp uge i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.hashset_ll*, %struct.hashset_ll** %4, align 8
  %49 = getelementptr inbounds %struct.hashset_ll, %struct.hashset_ll* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %38
  br label %24

54:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
