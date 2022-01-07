; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_ring_tx_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_ring_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.ag71xx_ring }
%struct.ag71xx_ring = type { i32, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@AG71XX_TX_RING_SIZE = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_ring_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_ring_tx_init(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %5, i32 0, i32 0
  store %struct.ag71xx_ring* %6, %struct.ag71xx_ring** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AG71XX_TX_RING_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %16 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @AG71XX_TX_RING_SIZE, align 4
  %21 = srem i32 %19, %20
  %22 = mul nsw i32 %17, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %14, %23
  %25 = call i64 @virt_to_phys(i64 %24)
  %26 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %27 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 %25, i64* %34, align 8
  %35 = load i32, i32* @DESC_EMPTY, align 4
  %36 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %37 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %35, i32* %44, align 8
  %45 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %46 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %11
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %7

55:                                               ; preds = %7
  %56 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %57 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  ret void
}

declare dso_local i64 @virt_to_phys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
