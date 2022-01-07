; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rings_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.ag71xx_ring, %struct.ag71xx_ring }
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
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 1
  store %struct.ag71xx_ring* %9, %struct.ag71xx_ring** %4, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 0
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
  br label %100

42:                                               ; preds = %1
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %47 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %46, i32 0, i32 0
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call i8* @dma_alloc_coherent(i32* null, i32 %45, i64* %47, i32 %48)
  %50 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %53 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %42
  %57 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %100

65:                                               ; preds = %42
  %66 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %67 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %70 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @BIT(i32 %71)
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %75 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %77 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %78, i64 %82
  %84 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %85 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %87 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %88, %92
  %94 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %95 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %97 = call i32 @ag71xx_ring_tx_init(%struct.ag71xx* %96)
  %98 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %99 = call i32 @ag71xx_ring_rx_init(%struct.ag71xx* %98)
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %65, %56, %39
  %101 = load i32, i32* %2, align 4
  ret i32 %101
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
