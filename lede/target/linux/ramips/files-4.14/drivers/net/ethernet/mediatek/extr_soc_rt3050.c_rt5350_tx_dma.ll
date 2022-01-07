; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_rt3050.c_rt5350_tx_dma.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_rt3050.c_rt5350_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_tx_dma = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_tx_dma*)* @rt5350_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5350_tx_dma(%struct.fe_tx_dma* %0) #0 {
  %2 = alloca %struct.fe_tx_dma*, align 8
  store %struct.fe_tx_dma* %0, %struct.fe_tx_dma** %2, align 8
  %3 = load %struct.fe_tx_dma*, %struct.fe_tx_dma** %2, align 8
  %4 = getelementptr inbounds %struct.fe_tx_dma, %struct.fe_tx_dma* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
