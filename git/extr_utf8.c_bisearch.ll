; ModuleID = '/home/carl/AnghaBench/git/extr_utf8.c_bisearch.c'
source_filename = "/home/carl/AnghaBench/git/extr_utf8.c_bisearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.interval*, i32)* @bisearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisearch(i64 %0, %struct.interval* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.interval* %1, %struct.interval** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.interval*, %struct.interval** %6, align 8
  %12 = getelementptr inbounds %struct.interval, %struct.interval* %11, i64 0
  %13 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.interval*, %struct.interval** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.interval, %struct.interval* %18, i64 %20
  %22 = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %65

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sdiv i32 %35, 2
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %9, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.interval*, %struct.interval** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.interval, %struct.interval* %39, i64 %41
  %43 = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %38, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %63

49:                                               ; preds = %31
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.interval*, %struct.interval** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.interval, %struct.interval* %51, i64 %53
  %55 = getelementptr inbounds %struct.interval, %struct.interval* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %50, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %62

61:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %65

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %46
  br label %27

64:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
