; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_rpc_proxy_cnews_on_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_rpc_proxy_cnews_on_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { %struct.news_gather_extra* }
%struct.news_gather_extra = type { i32, i32 }

@Rlen = common dso_local global i32* null, align 8
@TL_CNEWS_GET_RAW_UPDATES = common dso_local global i32 0, align 4
@Rfirst = common dso_local global i32* null, align 8
@Q = common dso_local global i32* null, align 8
@QN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_proxy_cnews_on_send(%struct.gather* %0, i32 %1) #0 {
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
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.gather*, %struct.gather** %4, align 8
  %18 = getelementptr inbounds %struct.gather, %struct.gather* %17, i32 0, i32 0
  %19 = load %struct.news_gather_extra*, %struct.news_gather_extra** %18, align 8
  store %struct.news_gather_extra* %19, %struct.news_gather_extra** %6, align 8
  %20 = load i32, i32* @TL_CNEWS_GET_RAW_UPDATES, align 4
  %21 = call i32 @tl_store_int(i32 %20)
  %22 = load %struct.news_gather_extra*, %struct.news_gather_extra** %6, align 8
  %23 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tl_store_int(i32 %24)
  %26 = load %struct.news_gather_extra*, %struct.news_gather_extra** %6, align 8
  %27 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tl_store_int(i32 %28)
  %30 = load i32*, i32** @Rlen, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tl_store_int(i32 %34)
  %36 = load i32*, i32** @Rfirst, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %83, %16
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** @Rlen, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32*, i32** @Q, align 8
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 3, %55
  %57 = add nsw i32 %56, 0
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tl_store_int(i32 %60)
  %62 = load i32*, i32** @Q, align 8
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 3, %63
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @tl_store_int(i32 %68)
  %70 = load i32*, i32** @Q, align 8
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 3, %71
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @tl_store_int(i32 %76)
  %78 = load i32*, i32** @QN, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %49
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %41

86:                                               ; preds = %41
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, -1
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
