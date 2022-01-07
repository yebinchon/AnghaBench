; ModuleID = '/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_raid6_recov.c___2data_recov_4.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_raid6_recov.c___2data_recov_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i32, i8*, i8*, i32* }

@raid6_gfexi = common dso_local global i8* null, align 8
@raid6_gfinv = common dso_local global i8* null, align 8
@raid6_gfexp = common dso_local global i64* null, align 8
@ASYNC_TX_FENCE = common dso_local global i32 0, align 4
@ASYNC_TX_XOR_ZERO_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (i32, i64, i32, i32, %struct.page**, %struct.async_submit_ctl*)* @__2data_recov_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @__2data_recov_4(i32 %0, i64 %1, i32 %2, i32 %3, %struct.page** %4, %struct.async_submit_ctl* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca %struct.async_submit_ctl*, align 8
  %13 = alloca %struct.dma_async_tx_descriptor*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca [2 x %struct.page*], align 16
  %19 = alloca [2 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.page** %4, %struct.page*** %11, align 8
  store %struct.async_submit_ctl* %5, %struct.async_submit_ctl** %12, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %13, align 8
  %24 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %25 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %20, align 4
  %27 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %28 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %21, align 8
  %30 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %31 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %22, align 8
  %33 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %34 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %23, align 8
  %36 = load %struct.page**, %struct.page*** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %36, i64 %39
  %41 = load %struct.page*, %struct.page** %40, align 8
  store %struct.page* %41, %struct.page** %14, align 8
  %42 = load %struct.page**, %struct.page*** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 %45
  %47 = load %struct.page*, %struct.page** %46, align 8
  store %struct.page* %47, %struct.page** %15, align 8
  %48 = load %struct.page**, %struct.page*** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.page*, %struct.page** %48, i64 %50
  %52 = load %struct.page*, %struct.page** %51, align 8
  store %struct.page* %52, %struct.page** %16, align 8
  %53 = load %struct.page**, %struct.page*** %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.page*, %struct.page** %53, i64 %55
  %57 = load %struct.page*, %struct.page** %56, align 8
  store %struct.page* %57, %struct.page** %17, align 8
  %58 = load %struct.page*, %struct.page** %14, align 8
  %59 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  store %struct.page* %58, %struct.page** %59, align 16
  %60 = load %struct.page*, %struct.page** %15, align 8
  %61 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 1
  store %struct.page* %60, %struct.page** %61, align 8
  %62 = load i8*, i8** @raid6_gfexi, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  store i8 %68, i8* %69, align 1
  %70 = load i8*, i8** @raid6_gfinv, align 8
  %71 = load i64*, i64** @raid6_gfexp, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** @raid6_gfexp, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = xor i64 %75, %80
  %82 = getelementptr inbounds i8, i8* %70, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 1
  store i8 %83, i8* %84, align 1
  %85 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %86 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %87 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %88 = load i8*, i8** %23, align 8
  %89 = call i32 @init_async_submit(%struct.async_submit_ctl* %85, i32 %86, %struct.dma_async_tx_descriptor* %87, i32* null, i8* null, i8* %88)
  %90 = load %struct.page*, %struct.page** %17, align 8
  %91 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %95 = call %struct.dma_async_tx_descriptor* @async_sum_product(%struct.page* %90, %struct.page** %91, i8* %92, i64 %93, %struct.async_submit_ctl* %94)
  store %struct.dma_async_tx_descriptor* %95, %struct.dma_async_tx_descriptor** %13, align 8
  %96 = load %struct.page*, %struct.page** %14, align 8
  %97 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  store %struct.page* %96, %struct.page** %97, align 16
  %98 = load %struct.page*, %struct.page** %17, align 8
  %99 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 1
  store %struct.page* %98, %struct.page** %99, align 8
  %100 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* @ASYNC_TX_XOR_ZERO_DST, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %105 = load i32*, i32** %21, align 8
  %106 = load i8*, i8** %22, align 8
  %107 = load i8*, i8** %23, align 8
  %108 = call i32 @init_async_submit(%struct.async_submit_ctl* %100, i32 %103, %struct.dma_async_tx_descriptor* %104, i32* %105, i8* %106, i8* %107)
  %109 = load %struct.page*, %struct.page** %16, align 8
  %110 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %113 = call %struct.dma_async_tx_descriptor* @async_xor(%struct.page* %109, %struct.page** %110, i32 0, i32 2, i64 %111, %struct.async_submit_ctl* %112)
  store %struct.dma_async_tx_descriptor* %113, %struct.dma_async_tx_descriptor** %13, align 8
  %114 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  ret %struct.dma_async_tx_descriptor* %114
}

declare dso_local i32 @init_async_submit(%struct.async_submit_ctl*, i32, %struct.dma_async_tx_descriptor*, i32*, i8*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_sum_product(%struct.page*, %struct.page**, i8*, i64, %struct.async_submit_ctl*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_xor(%struct.page*, %struct.page**, i32, i32, i64, %struct.async_submit_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
