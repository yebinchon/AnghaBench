; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_rpc_proxy_ugnews_on_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_rpc_proxy_ugnews_on_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { %struct.news_gather_extra* }
%struct.news_gather_extra = type { i32, i32, i32 }

@Rlen = common dso_local global i32* null, align 8
@TL_NEWS_GET_RAW_UPDATES = common dso_local global i32 0, align 4
@Rfirst = common dso_local global i32* null, align 8
@Q = common dso_local global i32* null, align 8
@QN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_proxy_ugnews_on_send(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gather*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.news_gather_extra*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gather* %0, %struct.gather** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** @Rlen, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.gather*, %struct.gather** %4, align 8
  %18 = getelementptr inbounds %struct.gather, %struct.gather* %17, i32 0, i32 0
  %19 = load %struct.news_gather_extra*, %struct.news_gather_extra** %18, align 8
  store %struct.news_gather_extra* %19, %struct.news_gather_extra** %6, align 8
  %20 = load i32, i32* @TL_NEWS_GET_RAW_UPDATES, align 4
  %21 = call i32 @tl_store_int(i32 %20)
  %22 = load %struct.news_gather_extra*, %struct.news_gather_extra** %6, align 8
  %23 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tl_store_int(i32 %24)
  %26 = load %struct.news_gather_extra*, %struct.news_gather_extra** %6, align 8
  %27 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tl_store_int(i32 %28)
  %30 = load %struct.news_gather_extra*, %struct.news_gather_extra** %6, align 8
  %31 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tl_store_int(i32 %32)
  %34 = load i32*, i32** @Rlen, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @tl_store_int(i32 %38)
  %40 = load i32*, i32** @Rfirst, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %69, %16
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** @Rlen, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32*, i32** @Q, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tl_store_int(i32 %62)
  %64 = load i32*, i32** @QN, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %45

72:                                               ; preds = %45
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, -1
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
