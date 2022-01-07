; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_get_recommend_rate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_get_recommend_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@recommend_rate_tbl = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_recommend_rate(i32 %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load double*, double** @recommend_rate_tbl, align 8
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %20, i64 %25
  %27 = load double, double* %26, align 8
  %28 = load double*, double** %7, align 8
  store double %27, double* %28, align 8
  store i32 0, i32* %4, align 4
  br label %30

29:                                               ; preds = %16, %13, %10, %3
  store i32 -1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
