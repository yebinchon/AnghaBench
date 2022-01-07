; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_set_recommend_rate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_set_recommend_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_set_recommend_rate = type { double }

@RECOMMEND_MODE = common dso_local global i32 0, align 4
@recommend_rate_tbl = common dso_local global i64* null, align 8
@LEV_NEWS_SET_RECOMMEND_RATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_recommend_rate(i32 %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.lev_news_set_recommend_rate*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %9 = load i32, i32* @RECOMMEND_MODE, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @valid_type(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %52

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16
  store i32 -1, i32* %4, align 4
  br label %52

23:                                               ; preds = %19
  %24 = load i64*, i64** @recommend_rate_tbl, align 8
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %24, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = load double, double* %7, align 8
  %34 = fsub double %32, %33
  %35 = fptosi double %34 to i64
  %36 = call i32 @fabs(i64 %35)
  %37 = sitofp i32 %36 to double
  %38 = fcmp olt double %37, 1.000000e-09
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %52

40:                                               ; preds = %23
  %41 = load i64, i64* @LEV_NEWS_SET_RECOMMEND_RATE, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.lev_news_set_recommend_rate* @alloc_log_event(i64 %44, i32 8, i32 %45)
  store %struct.lev_news_set_recommend_rate* %46, %struct.lev_news_set_recommend_rate** %8, align 8
  %47 = load double, double* %7, align 8
  %48 = load %struct.lev_news_set_recommend_rate*, %struct.lev_news_set_recommend_rate** %8, align 8
  %49 = getelementptr inbounds %struct.lev_news_set_recommend_rate, %struct.lev_news_set_recommend_rate* %48, i32 0, i32 0
  store double %47, double* %49, align 8
  %50 = load %struct.lev_news_set_recommend_rate*, %struct.lev_news_set_recommend_rate** %8, align 8
  %51 = call i32 @set_recommend_rate(%struct.lev_news_set_recommend_rate* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %40, %39, %22, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @valid_type(i32) #1

declare dso_local i32 @fabs(i64) #1

declare dso_local %struct.lev_news_set_recommend_rate* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @set_recommend_rate(%struct.lev_news_set_recommend_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
