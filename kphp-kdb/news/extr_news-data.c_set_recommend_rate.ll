; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_set_recommend_rate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_set_recommend_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_news_set_recommend_rate = type { i32, i32, i32 }

@recommend_rate_tbl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_news_set_recommend_rate*)* @set_recommend_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_recommend_rate(%struct.lev_news_set_recommend_rate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_news_set_recommend_rate*, align 8
  store %struct.lev_news_set_recommend_rate* %0, %struct.lev_news_set_recommend_rate** %3, align 8
  %4 = load %struct.lev_news_set_recommend_rate*, %struct.lev_news_set_recommend_rate** %3, align 8
  %5 = getelementptr inbounds %struct.lev_news_set_recommend_rate, %struct.lev_news_set_recommend_rate* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.lev_news_set_recommend_rate*, %struct.lev_news_set_recommend_rate** %3, align 8
  %10 = getelementptr inbounds %struct.lev_news_set_recommend_rate, %struct.lev_news_set_recommend_rate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 255
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %30

14:                                               ; preds = %8
  %15 = load %struct.lev_news_set_recommend_rate*, %struct.lev_news_set_recommend_rate** %3, align 8
  %16 = getelementptr inbounds %struct.lev_news_set_recommend_rate, %struct.lev_news_set_recommend_rate* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @recommend_rate_tbl, align 8
  %19 = load %struct.lev_news_set_recommend_rate*, %struct.lev_news_set_recommend_rate** %3, align 8
  %20 = getelementptr inbounds %struct.lev_news_set_recommend_rate, %struct.lev_news_set_recommend_rate* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 31
  %23 = shl i32 %22, 8
  %24 = load %struct.lev_news_set_recommend_rate*, %struct.lev_news_set_recommend_rate** %3, align 8
  %25 = getelementptr inbounds %struct.lev_news_set_recommend_rate, %struct.lev_news_set_recommend_rate* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %18, i64 %28
  store i32 %17, i32* %29, align 4
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %14, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
