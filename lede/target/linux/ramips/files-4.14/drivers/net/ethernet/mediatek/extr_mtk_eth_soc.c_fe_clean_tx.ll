; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_clean_tx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_clean_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { %struct.TYPE_2__*, %struct.fe_tx_ring }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.fe_tx_ring = type { i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_priv*)* @fe_clean_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_clean_tx(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fe_tx_ring*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  %6 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %7 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %11 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %10, i32 0, i32 1
  store %struct.fe_tx_ring* %11, %struct.fe_tx_ring** %5, align 8
  %12 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %13 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @fe_txd_unmap(%struct.device* %24, i32* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %37 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %1
  %43 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %50 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %56 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %59 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dma_free_coherent(%struct.device* %48, i32 %54, i32* %57, i32 %60)
  %62 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %5, align 8
  %63 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %47, %42
  %65 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %66 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 @netdev_reset_queue(%struct.TYPE_2__* %67)
  ret void
}

declare dso_local i32 @fe_txd_unmap(%struct.device*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @netdev_reset_queue(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
