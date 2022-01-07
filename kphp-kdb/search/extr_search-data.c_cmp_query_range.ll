; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_cmp_query_range.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_cmp_query_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_range = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_query_range(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.query_range*, align 8
  %7 = alloca %struct.query_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.query_range*
  store %struct.query_range* %11, %struct.query_range** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.query_range*
  store %struct.query_range* %13, %struct.query_range** %7, align 8
  %14 = load %struct.query_range*, %struct.query_range** %6, align 8
  %15 = getelementptr inbounds %struct.query_range, %struct.query_range* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.query_range*, %struct.query_range** %6, align 8
  %18 = getelementptr inbounds %struct.query_range, %struct.query_range* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.query_range*, %struct.query_range** %7, align 8
  %22 = getelementptr inbounds %struct.query_range, %struct.query_range* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.query_range*, %struct.query_range** %7, align 8
  %25 = getelementptr inbounds %struct.query_range, %struct.query_range* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %23, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
