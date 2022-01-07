; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_empty_txd.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_empty_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_tx_ring = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_tx_ring*)* @fe_empty_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_empty_txd(%struct.fe_tx_ring* %0) #0 {
  %2 = alloca %struct.fe_tx_ring*, align 8
  store %struct.fe_tx_ring* %0, %struct.fe_tx_ring** %2, align 8
  %3 = call i32 (...) @barrier()
  %4 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %2, align 8
  %5 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %2, align 8
  %8 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %2, align 8
  %11 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %2, align 8
  %15 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  %19 = sub nsw i32 %6, %18
  ret i32 %19
}

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
