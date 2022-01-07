; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_recv.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_device = type { i32, i64 }
%struct.ag71xx = type { %struct.ag71xx_ring }
%struct.ag71xx_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ag71xx_desc* }
%struct.ag71xx_desc = type { i32 }

@AG71XX_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: rx packets, curr=%u\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@NetRxPackets = common dso_local global i64* null, align 8
@PKTSIZE_ALIGN = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@AG71XX_REG_RX_CTRL = common dso_local global i32 0, align 4
@RX_CTRL_RXE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eth_device*)* @ag71xx_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_recv(%struct.eth_device* %0) #0 {
  %2 = alloca %struct.eth_device*, align 8
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.ag71xx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ag71xx_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.eth_device* %0, %struct.eth_device** %2, align 8
  %8 = load %struct.eth_device*, %struct.eth_device** %2, align 8
  %9 = getelementptr inbounds %struct.eth_device, %struct.eth_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ag71xx*
  store %struct.ag71xx* %11, %struct.ag71xx** %3, align 8
  %12 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %13 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %12, i32 0, i32 0
  store %struct.ag71xx_ring* %13, %struct.ag71xx_ring** %4, align 8
  br label %14

14:                                               ; preds = %84, %1
  %15 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AG71XX_RX_RING_SIZE, align 4
  %19 = urem i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %26, align 8
  store %struct.ag71xx_desc* %27, %struct.ag71xx_desc** %6, align 8
  %28 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %6, align 8
  %29 = call i64 @ag71xx_desc_empty(%struct.ag71xx_desc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %85

32:                                               ; preds = %14
  %33 = load %struct.eth_device*, %struct.eth_device** %2, align 8
  %34 = getelementptr inbounds %struct.eth_device, %struct.eth_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %37 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %6, align 8
  %41 = call i32 @ag71xx_desc_pktlen(%struct.ag71xx_desc* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i64, i64* @ETH_FCS_LEN, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i64*, i64** @NetRxPackets, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @NetReceive(i64 %51, i32 %52)
  %54 = load i64*, i64** @NetRxPackets, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @PKTSIZE_ALIGN, align 4
  %61 = call i32 @flush_cache(i32 %59, i32 %60)
  %62 = load i32, i32* @DESC_EMPTY, align 4
  %63 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %64 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %69, align 8
  %71 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %70, i32 0, i32 0
  store i32 %62, i32* %71, align 4
  %72 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %77 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @AG71XX_RX_RING_SIZE, align 4
  %80 = icmp uge i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %32
  %82 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %83 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %32
  br label %14

85:                                               ; preds = %31
  %86 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %87 = load i32, i32* @AG71XX_REG_RX_CTRL, align 4
  %88 = call i32 @ag71xx_rr(%struct.ag71xx* %86, i32 %87)
  %89 = load i32, i32* @RX_CTRL_RXE, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %94 = load i32, i32* @AG71XX_REG_RX_CTRL, align 4
  %95 = load i32, i32* @RX_CTRL_RXE, align 4
  %96 = call i32 @ag71xx_wr(%struct.ag71xx* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %85
  ret i32 0
}

declare dso_local i64 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @ag71xx_desc_pktlen(%struct.ag71xx_desc*) #1

declare dso_local i32 @NetReceive(i64, i32) #1

declare dso_local i32 @flush_cache(i32, i32) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
