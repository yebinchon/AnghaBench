; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_hashmap_int_int_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_hashmap_int_int_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap_int_int = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashmap_int_int_get(%struct.hashmap_int_int* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashmap_int_int*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hashmap_int_int* %0, %struct.hashmap_int_int** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.hashmap_int_int*, %struct.hashmap_int_int** %5, align 8
  %13 = getelementptr inbounds %struct.hashmap_int_int, %struct.hashmap_int_int* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = urem i32 %11, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.hashmap_int_int*, %struct.hashmap_int_int** %5, align 8
  %18 = getelementptr inbounds %struct.hashmap_int_int, %struct.hashmap_int_int* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub i32 %19, 1
  %21 = urem i32 %16, %20
  %22 = add i32 1, %21
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %55, %3
  %24 = load %struct.hashmap_int_int*, %struct.hashmap_int_int** %5, align 8
  %25 = getelementptr inbounds %struct.hashmap_int_int, %struct.hashmap_int_int* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %4, align 4
  br label %59

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.hashmap_int_int*, %struct.hashmap_int_int** %5, align 8
  %46 = getelementptr inbounds %struct.hashmap_int_int, %struct.hashmap_int_int* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp uge i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.hashmap_int_int*, %struct.hashmap_int_int** %5, align 8
  %51 = getelementptr inbounds %struct.hashmap_int_int, %struct.hashmap_int_int* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %40
  br label %23

56:                                               ; preds = %23
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
