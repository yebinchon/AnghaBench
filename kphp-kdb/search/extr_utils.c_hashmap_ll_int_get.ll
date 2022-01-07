; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_hashmap_ll_int_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_hashmap_ll_int_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap_ll_int = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashmap_ll_int_get(%struct.hashmap_ll_int* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashmap_ll_int*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hashmap_ll_int* %0, %struct.hashmap_ll_int** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.hashmap_ll_int*, %struct.hashmap_ll_int** %5, align 8
  %14 = getelementptr inbounds %struct.hashmap_ll_int, %struct.hashmap_ll_int* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = urem i32 %12, %15
  store i32 %16, i32* %8, align 4
  %17 = load i64, i64* %6, align 8
  %18 = ashr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load %struct.hashmap_ll_int*, %struct.hashmap_ll_int** %5, align 8
  %21 = getelementptr inbounds %struct.hashmap_ll_int, %struct.hashmap_ll_int* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub i32 %22, 1
  %24 = urem i32 %19, %23
  %25 = add i32 1, %24
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %58, %3
  %27 = load %struct.hashmap_ll_int*, %struct.hashmap_ll_int** %5, align 8
  %28 = getelementptr inbounds %struct.hashmap_ll_int, %struct.hashmap_ll_int* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %62

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.hashmap_ll_int*, %struct.hashmap_ll_int** %5, align 8
  %49 = getelementptr inbounds %struct.hashmap_ll_int, %struct.hashmap_ll_int* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp uge i32 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.hashmap_ll_int*, %struct.hashmap_ll_int** %5, align 8
  %54 = getelementptr inbounds %struct.hashmap_ll_int, %struct.hashmap_ll_int* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %43
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %40
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
