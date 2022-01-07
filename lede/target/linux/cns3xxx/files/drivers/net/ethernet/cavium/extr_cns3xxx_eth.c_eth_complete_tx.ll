; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_complete_tx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_complete_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw = type { i32, %struct._tx_ring }
%struct._tx_ring = type { i32, i32, %struct.tx_desc*, i32*, %struct.sk_buff** }
%struct.tx_desc = type { i32, i32 }
%struct.sk_buff = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw*)* @eth_complete_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eth_complete_tx(%struct.sw* %0) #0 {
  %2 = alloca %struct.sw*, align 8
  %3 = alloca %struct._tx_ring*, align 8
  %4 = alloca %struct.tx_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sw* %0, %struct.sw** %2, align 8
  %9 = load %struct.sw*, %struct.sw** %2, align 8
  %10 = getelementptr inbounds %struct.sw, %struct.sw* %9, i32 0, i32 1
  store %struct._tx_ring* %10, %struct._tx_ring** %3, align 8
  %11 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %12 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %15 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %18 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %17, i32 0, i32 2
  %19 = load %struct.tx_desc*, %struct.tx_desc** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %19, i64 %21
  store %struct.tx_desc* %22, %struct.tx_desc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %85, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %88

27:                                               ; preds = %23
  %28 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %29 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %88

33:                                               ; preds = %27
  %34 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %35 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %34, i32 0, i32 4
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %8, align 8
  %41 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %42 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %41, i32 0, i32 4
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %43, i64 %45
  store %struct.sk_buff* null, %struct.sk_buff** %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %49, %33
  %53 = load %struct.sw*, %struct.sw** %2, align 8
  %54 = getelementptr inbounds %struct.sw, %struct.sw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %57 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %64 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @dma_unmap_single(i32 %55, i32 %62, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @TX_DESCS, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  %73 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %74 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %73, i32 0, i32 2
  %75 = load %struct.tx_desc*, %struct.tx_desc** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %75, i64 %77
  store %struct.tx_desc* %78, %struct.tx_desc** %4, align 8
  br label %84

79:                                               ; preds = %52
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %83 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %82, i32 1
  store %struct.tx_desc* %83, %struct.tx_desc** %4, align 8
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %23

88:                                               ; preds = %32, %23
  %89 = load i32, i32* %6, align 4
  %90 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %91 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %94 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct._tx_ring*, %struct._tx_ring** %3, align 8
  %98 = call i32 @eth_check_num_used(%struct._tx_ring* %97)
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @eth_check_num_used(%struct._tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
