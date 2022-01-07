; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_hashset_int_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_hashset_int_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashset_int = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashset_int_get(%struct.hashset_int* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashset_int*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hashset_int* %0, %struct.hashset_int** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %10 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = urem i32 %8, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %15 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub i32 %16, 1
  %18 = urem i32 %13, %17
  %19 = add i32 1, %18
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %55, %2
  %21 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %22 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %20
  %30 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %31 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %57

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %46 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp uge i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %51 = getelementptr inbounds %struct.hashset_int, %struct.hashset_int* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %40
  br label %20

56:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
