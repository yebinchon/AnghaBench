; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_set_desc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw = type { i32 }
%struct._tx_ring = type { i32*, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_DESCS = common dso_local global i32 0, align 4
@END_OF_RING = common dso_local global i32 0, align 4
@LAST_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw*, %struct._tx_ring*, i32, i32, i8*, i32, i32, i32)* @eth_set_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eth_set_desc(%struct.sw* %0, %struct._tx_ring* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sw*, align 8
  %10 = alloca %struct._tx_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tx_desc*, align 8
  %18 = alloca i32, align 4
  store %struct.sw* %0, %struct.sw** %9, align 8
  store %struct._tx_ring* %1, %struct._tx_ring** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load %struct._tx_ring*, %struct._tx_ring** %10, align 8
  %20 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %19, i32 0, i32 1
  %21 = load %struct.tx_desc*, %struct.tx_desc** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %21, i64 %23
  store %struct.tx_desc* %24, %struct.tx_desc** %17, align 8
  %25 = load %struct.sw*, %struct.sw** %9, align 8
  %26 = getelementptr inbounds %struct.sw, %struct.sw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = call i32 @dma_map_single(i32 %27, i8* %28, i32 %29, i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %34 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %37 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load %struct._tx_ring*, %struct._tx_ring** %10, align 8
  %40 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @TX_DESCS, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %8
  %53 = load i32, i32* @END_OF_RING, align 4
  %54 = load i32, i32* %15, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %52, %8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @LAST_SEGMENT, align 4
  %62 = load i32, i32* %15, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = call i32 (...) @wmb()
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %68 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
