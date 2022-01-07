; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_fill_rx_buf.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_fill_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.TYPE_2__*, %struct.ag71xx_ring }
%struct.TYPE_2__ = type { i32 }
%struct.ag71xx_ring = type { %struct.ag71xx_buf* }
%struct.ag71xx_buf = type { i64, i8* }
%struct.ag71xx_desc = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*, %struct.ag71xx_buf*, i32, i8* (i32)*)* @ag71xx_fill_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_fill_rx_buf(%struct.ag71xx* %0, %struct.ag71xx_buf* %1, i32 %2, i8* (i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ag71xx*, align 8
  %7 = alloca %struct.ag71xx_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8* (i32)*, align 8
  %10 = alloca %struct.ag71xx_ring*, align 8
  %11 = alloca %struct.ag71xx_desc*, align 8
  %12 = alloca i8*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %6, align 8
  store %struct.ag71xx_buf* %1, %struct.ag71xx_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* (i32)* %3, i8* (i32)** %9, align 8
  %13 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %14 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %13, i32 0, i32 2
  store %struct.ag71xx_ring* %14, %struct.ag71xx_ring** %10, align 8
  %15 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %10, align 8
  %16 = load %struct.ag71xx_buf*, %struct.ag71xx_buf** %7, align 8
  %17 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %10, align 8
  %18 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %17, i32 0, i32 0
  %19 = load %struct.ag71xx_buf*, %struct.ag71xx_buf** %18, align 8
  %20 = getelementptr inbounds %struct.ag71xx_buf, %struct.ag71xx_buf* %19, i64 0
  %21 = ptrtoint %struct.ag71xx_buf* %16 to i64
  %22 = ptrtoint %struct.ag71xx_buf* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 16
  %25 = trunc i64 %24 to i32
  %26 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %15, i32 %25)
  store %struct.ag71xx_desc* %26, %struct.ag71xx_desc** %11, align 8
  %27 = load i8* (i32)*, i8* (i32)** %9, align 8
  %28 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %29 = call i32 @ag71xx_buffer_size(%struct.ag71xx* %28)
  %30 = call i8* %27(i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

34:                                               ; preds = %4
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.ag71xx_buf*, %struct.ag71xx_buf** %7, align 8
  %37 = getelementptr inbounds %struct.ag71xx_buf, %struct.ag71xx_buf* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %39 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %44 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i64 @dma_map_single(i32* %41, i8* %42, i32 %45, i32 %46)
  %48 = load %struct.ag71xx_buf*, %struct.ag71xx_buf** %7, align 8
  %49 = getelementptr inbounds %struct.ag71xx_buf, %struct.ag71xx_buf* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ag71xx_buf*, %struct.ag71xx_buf** %7, align 8
  %51 = getelementptr inbounds %struct.ag71xx_buf, %struct.ag71xx_buf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %11, align 8
  %57 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %34, %33
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_buffer_size(%struct.ag71xx*) #1

declare dso_local i64 @dma_map_single(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
