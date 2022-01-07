; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_do_ppe_tasklet.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_do_ppe_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MBOX_IGU1_ISR = common dso_local global i32* null, align 8
@MBOX_IGU1_ISRC = common dso_local global i32* null, align 8
@RX_DMA_CH_AAL = common dso_local global i32 0, align 4
@RX_DMA_CH_OAM = common dso_local global i32 0, align 4
@FIRST_QSB_QID = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@g_dma_tasklet = common dso_local global i32 0, align 4
@PPE_MAILBOX_IGU1_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @do_ppe_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ppe_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32*, i32** @MBOX_IGU1_ISR, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** @MBOX_IGU1_ISR, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** @MBOX_IGU1_ISRC, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RX_DMA_CH_AAL, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @mailbox_aal_rx_handler()
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @RX_DMA_CH_OAM, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @mailbox_oam_rx_handler()
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @FIRST_QSB_QID, align 4
  %27 = add nsw i32 %26, 16
  %28 = lshr i32 %25, %27
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_atm_priv_data, i32 0, i32 0), align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @FIRST_QSB_QID, align 4
  %35 = add nsw i32 %34, 16
  %36 = lshr i32 %33, %35
  %37 = call i32 @mailbox_tx_handler(i32 %36)
  br label %38

38:                                               ; preds = %32, %24
  %39 = load i32*, i32** @MBOX_IGU1_ISR, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RX_DMA_CH_AAL, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @RX_DMA_CH_OAM, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i32 @tasklet_schedule(i32* @g_dma_tasklet)
  br label %63

50:                                               ; preds = %38
  %51 = load i32*, i32** @MBOX_IGU1_ISR, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FIRST_QSB_QID, align 4
  %54 = add nsw i32 %53, 16
  %55 = ashr i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 @tasklet_schedule(i32* @g_dma_tasklet)
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @PPE_MAILBOX_IGU1_INT, align 4
  %61 = call i32 @enable_irq(i32 %60)
  br label %62

62:                                               ; preds = %59, %57
  br label %63

63:                                               ; preds = %62, %48
  ret void
}

declare dso_local i32 @mailbox_aal_rx_handler(...) #1

declare dso_local i32 @mailbox_oam_rx_handler(...) #1

declare dso_local i32 @mailbox_tx_handler(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
