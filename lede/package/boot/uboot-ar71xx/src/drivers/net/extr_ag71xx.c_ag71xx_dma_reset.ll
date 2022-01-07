; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_dma_reset.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_dma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [43 x i8] c"%s: txdesc reg: 0x%08x rxdesc reg: 0x%08x\0A\00", align 1
@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_RX_STATUS = common dso_local global i32 0, align 4
@RX_STATUS_PR = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_PS = common dso_local global i32 0, align 4
@RX_STATUS_BE = common dso_local global i32 0, align 4
@RX_STATUS_OF = common dso_local global i32 0, align 4
@TX_STATUS_BE = common dso_local global i32 0, align 4
@TX_STATUS_UR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: unable to clear DMA Rx status: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: unable to clear DMA Tx status: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_dma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_dma_reset(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %12 = call i32 @ag71xx_rr(%struct.ag71xx* %10, i32 %11)
  %13 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %14 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %15 = call i32 @ag71xx_rr(%struct.ag71xx* %13, i32 %14)
  %16 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %12, i32 %15)
  %17 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %18 = load i32, i32* @AG71XX_REG_RX_CTRL, align 4
  %19 = call i32 @ag71xx_wr(%struct.ag71xx* %17, i32 %18, i32 0)
  %20 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %21 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %22 = call i32 @ag71xx_wr(%struct.ag71xx* %20, i32 %21, i32 0)
  %23 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %24 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %25 = call i32 @ag71xx_wr(%struct.ag71xx* %23, i32 %24, i32 0)
  %26 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %27 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %28 = call i32 @ag71xx_wr(%struct.ag71xx* %26, i32 %27, i32 0)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %41, %1
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %34 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %35 = load i32, i32* @RX_STATUS_PR, align 4
  %36 = call i32 @ag71xx_wr(%struct.ag71xx* %33, i32 %34, i32 %35)
  %37 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %38 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %39 = load i32, i32* @TX_STATUS_PS, align 4
  %40 = call i32 @ag71xx_wr(%struct.ag71xx* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %46 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %47 = load i32, i32* @RX_STATUS_BE, align 4
  %48 = load i32, i32* @RX_STATUS_OF, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @ag71xx_wr(%struct.ag71xx* %45, i32 %46, i32 %49)
  %51 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %52 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %53 = load i32, i32* @TX_STATUS_BE, align 4
  %54 = load i32, i32* @TX_STATUS_UR, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ag71xx_wr(%struct.ag71xx* %51, i32 %52, i32 %55)
  %57 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %58 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %59 = call i32 @ag71xx_rr(%struct.ag71xx* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %44
  %63 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %64 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %44
  %71 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %72 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %73 = call i32 @ag71xx_rr(%struct.ag71xx* %71, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, 16777215
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %80 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %70
  ret void
}

declare dso_local i32 @DBG(i8*, i8*, i32, i32) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
