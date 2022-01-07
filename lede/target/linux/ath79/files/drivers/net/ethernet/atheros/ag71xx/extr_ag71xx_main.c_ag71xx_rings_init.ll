; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rings_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__*, %struct.ag71xx_ring, %struct.ag71xx_ring }
%struct.TYPE_2__ = type { i32 }
%struct.ag71xx_ring = type { i64, i8*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AG71XX_DESC_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_rings_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_rings_init(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.ag71xx_ring*, align 8
  %5 = alloca %struct.ag71xx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %8 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 2
  store %struct.ag71xx_ring* %9, %struct.ag71xx_ring** %4, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 1
  store %struct.ag71xx_ring* %11, %struct.ag71xx_ring** %5, align 8
  %12 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @BIT(i32 %14)
  %16 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %17 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @BIT(i32 %18)
  %20 = add i64 %15, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @BIT(i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kzalloc(i32 %30, i32 %31)
  %33 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %36 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %104

42:                                               ; preds = %1
  %43 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %44 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i8* @dma_alloc_coherent(i32* %46, i32 %49, i64* %51, i32 %52)
  %54 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %55 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %57 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %42
  %61 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %66 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %104

69:                                               ; preds = %42
  %70 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %71 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %74 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @BIT(i32 %75)
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %79 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %78, i32 0, i32 3
  store i32* %77, i32** %79, align 8
  %80 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %82, i64 %86
  %88 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %89 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %91 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %92, %96
  %98 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %99 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %101 = call i32 @ag71xx_ring_tx_init(%struct.ag71xx* %100)
  %102 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %103 = call i32 @ag71xx_ring_rx_init(%struct.ag71xx* %102)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %69, %60, %39
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ag71xx_ring_tx_init(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_ring_rx_init(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
