; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_hashset_int_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_hashset_int_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashset_int = type { i32, i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashset_int_insert(%struct.hashset_int* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashset_int*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.hashset_int* %0, %struct.hashset_int** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %11 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = urem i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %16 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub i32 %17, 1
  %19 = urem i32 %14, %18
  %20 = add i32 1, %19
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %51, %2
  %22 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %23 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %21
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %65

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %42 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %47 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %45, %36
  br label %21

52:                                               ; preds = %21
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %56 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %54, i64* %60, align 8
  %61 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %62 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %52, %35
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
