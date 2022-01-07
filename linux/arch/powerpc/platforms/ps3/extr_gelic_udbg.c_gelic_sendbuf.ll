; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_gelic_udbg.c_gelic_sendbuf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_gelic_udbg.c_gelic_sendbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@header_size = common dso_local global i64 0, align 8
@dbg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@h_ip = common dso_local global %struct.TYPE_7__* null, align 8
@h_udp = common dso_local global %struct.TYPE_6__* null, align 8
@GELIC_DESCR_DMA_CMD_NO_CHKSUM = common dso_local global i32 0, align 4
@GELIC_DESCR_TX_DMA_FRAME_TAIL = common dso_local global i32 0, align 4
@GELIC_BUS_ID = common dso_local global i32 0, align 4
@GELIC_DEVICE_ID = common dso_local global i32 0, align 4
@bus_addr = common dso_local global i32 0, align 4
@GELIC_DESCR_DMA_STAT_MASK = common dso_local global i32 0, align 4
@GELIC_DESCR_DMA_CARDOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gelic_sendbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_sendbuf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @header_size, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %6, %8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbg, i32 0, i32 0, i32 3), align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 4
  %13 = add i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @h_ip, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @h_udp, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @h_ip, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  store i32 0, i32* %4, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @h_ip, align 8
  %26 = bitcast %struct.TYPE_7__* %25 to i32*
  store i32* %26, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %36, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %3, align 8
  %33 = load i32, i32* %31, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 16
  %43 = add nsw i32 %40, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @h_ip, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @GELIC_DESCR_DMA_CMD_NO_CHKSUM, align 4
  %48 = load i32, i32* @GELIC_DESCR_TX_DMA_FRAME_TAIL, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbg, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbg, i32 0, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbg, i32 0, i32 0, i32 1), align 8
  %50 = call i32 (...) @wmb()
  %51 = load i32, i32* @GELIC_BUS_ID, align 4
  %52 = load i32, i32* @GELIC_DEVICE_ID, align 4
  %53 = load i32, i32* @bus_addr, align 4
  %54 = call i32 @lv1_net_start_tx_dma(i32 %51, i32 %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %61, %39
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbg, i32 0, i32 0, i32 0), align 8
  %57 = load i32, i32* @GELIC_DESCR_DMA_STAT_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @GELIC_DESCR_DMA_CARDOWNED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 (...) @cpu_relax()
  br label %55

63:                                               ; preds = %55
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @lv1_net_start_tx_dma(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
