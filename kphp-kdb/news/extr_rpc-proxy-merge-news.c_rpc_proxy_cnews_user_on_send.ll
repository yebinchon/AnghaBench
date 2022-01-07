; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_rpc_proxy_cnews_user_on_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_rpc_proxy_cnews_user_on_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { %struct.news_gather_extra* }
%struct.news_gather_extra = type { i32, i32, i32 }

@TL_CNEWS_GET_RAW_USER_UPDATES = common dso_local global i32 0, align 4
@Q_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_proxy_cnews_user_on_send(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca %struct.gather*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.news_gather_extra*, align 8
  store %struct.gather* %0, %struct.gather** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gather*, %struct.gather** %3, align 8
  %7 = getelementptr inbounds %struct.gather, %struct.gather* %6, i32 0, i32 0
  %8 = load %struct.news_gather_extra*, %struct.news_gather_extra** %7, align 8
  store %struct.news_gather_extra* %8, %struct.news_gather_extra** %5, align 8
  %9 = load i32, i32* @TL_CNEWS_GET_RAW_USER_UPDATES, align 4
  %10 = call i32 @tl_store_int(i32 %9)
  %11 = load %struct.news_gather_extra*, %struct.news_gather_extra** %5, align 8
  %12 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tl_store_int(i32 %13)
  %15 = load %struct.news_gather_extra*, %struct.news_gather_extra** %5, align 8
  %16 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tl_store_int(i32 %17)
  %19 = load %struct.news_gather_extra*, %struct.news_gather_extra** %5, align 8
  %20 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tl_store_int(i32 %21)
  %23 = load i32, i32* @Q_size, align 4
  %24 = call i32 @tl_store_int(i32 %23)
  ret i32 0
}

declare dso_local i32 @tl_store_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
