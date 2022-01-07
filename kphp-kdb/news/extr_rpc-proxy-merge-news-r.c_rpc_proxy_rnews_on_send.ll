; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_rpc_proxy_rnews_on_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_rpc_proxy_rnews_on_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { %struct.rnews_gather_extra* }
%struct.rnews_gather_extra = type { i64, i64, i64, i64, i64, i64 }

@Rlen = common dso_local global i64* null, align 8
@R_common_len = common dso_local global i64 0, align 8
@TL_NEWS_GET_RAW_UPDATES = common dso_local global i64 0, align 8
@R = common dso_local global i32 0, align 4
@Rfirst = common dso_local global i32* null, align 8
@Q = common dso_local global i64* null, align 8
@QN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_proxy_rnews_on_send(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gather*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rnews_gather_extra*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gather* %0, %struct.gather** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64*, i64** @Rlen, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @R_common_len, align 8
  %15 = add nsw i64 %13, %14
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load %struct.gather*, %struct.gather** %4, align 8
  %20 = getelementptr inbounds %struct.gather, %struct.gather* %19, i32 0, i32 0
  %21 = load %struct.rnews_gather_extra*, %struct.rnews_gather_extra** %20, align 8
  store %struct.rnews_gather_extra* %21, %struct.rnews_gather_extra** %6, align 8
  %22 = load i64, i64* @TL_NEWS_GET_RAW_UPDATES, align 8
  %23 = call i32 @tl_store_int(i64 %22)
  %24 = load %struct.rnews_gather_extra*, %struct.rnews_gather_extra** %6, align 8
  %25 = getelementptr inbounds %struct.rnews_gather_extra, %struct.rnews_gather_extra* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @tl_store_int(i64 %26)
  %28 = load %struct.rnews_gather_extra*, %struct.rnews_gather_extra** %6, align 8
  %29 = getelementptr inbounds %struct.rnews_gather_extra, %struct.rnews_gather_extra* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @tl_store_int(i64 %30)
  %32 = load %struct.rnews_gather_extra*, %struct.rnews_gather_extra** %6, align 8
  %33 = getelementptr inbounds %struct.rnews_gather_extra, %struct.rnews_gather_extra* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @tl_store_int(i64 %34)
  %36 = load %struct.rnews_gather_extra*, %struct.rnews_gather_extra** %6, align 8
  %37 = getelementptr inbounds %struct.rnews_gather_extra, %struct.rnews_gather_extra* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @tl_store_int(i64 %38)
  %40 = load %struct.rnews_gather_extra*, %struct.rnews_gather_extra** %6, align 8
  %41 = getelementptr inbounds %struct.rnews_gather_extra, %struct.rnews_gather_extra* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @tl_store_int(i64 %42)
  %44 = load %struct.rnews_gather_extra*, %struct.rnews_gather_extra** %6, align 8
  %45 = getelementptr inbounds %struct.rnews_gather_extra, %struct.rnews_gather_extra* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @tl_store_int(i64 %46)
  %48 = load i64*, i64** @Rlen, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @R_common_len, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @tl_store_int(i64 %54)
  %56 = load i32, i32* @R, align 4
  %57 = load i64, i64* @R_common_len, align 8
  %58 = mul nsw i64 %57, 4
  %59 = call i32 @tl_store_raw_data(i32 %56, i64 %58)
  %60 = load i32*, i32** @Rfirst, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %100, %18
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64*, i64** @Rlen, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %67, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i64*, i64** @Q, align 8
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 2, %80
  %82 = add nsw i32 %81, 0
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @tl_store_int(i64 %85)
  %87 = load i64*, i64** @Q, align 8
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %87, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @tl_store_int(i64 %93)
  %95 = load i32*, i32** @QN, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %74
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %65

103:                                              ; preds = %65
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, -1
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @tl_store_int(i64) #1

declare dso_local i32 @tl_store_raw_data(i32, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
