; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtksdio_dev = type { i32, i32 }

@C_FW_OWN_REQ_CLR = common dso_local global i32 0, align 4
@MTK_REG_CHLPCR = common dso_local global i32 0, align 4
@btmtksdio_drv_own_query = common dso_local global i32 0, align 4
@C_COM_DRV_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot get ownership from device\00", align 1
@C_INT_EN_CLR = common dso_local global i32 0, align 4
@MTK_REG_CHIER = common dso_local global i32 0, align 4
@btmtksdio_interrupt = common dso_local global i32 0, align 4
@MTK_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDIO_INT_CTL = common dso_local global i32 0, align 4
@SDIO_RE_INIT_EN = common dso_local global i32 0, align 4
@MTK_REG_CSDIOCSR = common dso_local global i32 0, align 4
@C_INT_CLR_CTRL = common dso_local global i32 0, align 4
@MTK_REG_CHCR = common dso_local global i32 0, align 4
@RX_DONE_INT = common dso_local global i32 0, align 4
@TX_EMPTY = common dso_local global i32 0, align 4
@TX_FIFO_OVERFLOW = common dso_local global i32 0, align 4
@C_INT_EN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtksdio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtksdio_open(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btmtksdio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = call %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.btmtksdio_dev* %8, %struct.btmtksdio_dev** %4, align 8
  %9 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %10 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sdio_claim_host(i32 %11)
  %13 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sdio_enable_func(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %143

20:                                               ; preds = %1
  %21 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %22 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @C_FW_OWN_REQ_CLR, align 4
  %25 = load i32, i32* @MTK_REG_CHLPCR, align 4
  %26 = call i32 @sdio_writel(i32 %23, i32 %24, i32 %25, i32* %5)
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %138

30:                                               ; preds = %20
  %31 = load i32, i32* @btmtksdio_drv_own_query, align 4
  %32 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @C_COM_DRV_OWN, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @readx_poll_timeout(i32 %31, %struct.btmtksdio_dev* %32, i32 %33, i32 %36, i32 2000, i32 1000000)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %42 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bt_dev_err(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %138

45:                                               ; preds = %30
  %46 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %47 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @C_INT_EN_CLR, align 4
  %50 = load i32, i32* @MTK_REG_CHLPCR, align 4
  %51 = call i32 @sdio_writel(i32 %48, i32 %49, i32 %50, i32* %5)
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %138

55:                                               ; preds = %45
  %56 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %57 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MTK_REG_CHIER, align 4
  %60 = call i32 @sdio_writel(i32 %58, i32 0, i32 %59, i32* %5)
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %138

64:                                               ; preds = %55
  %65 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %66 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @btmtksdio_interrupt, align 4
  %69 = call i32 @sdio_claim_irq(i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %138

73:                                               ; preds = %64
  %74 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %75 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MTK_SDIO_BLOCK_SIZE, align 4
  %78 = call i32 @sdio_set_block_size(i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %133

82:                                               ; preds = %73
  %83 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %84 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SDIO_INT_CTL, align 4
  %87 = load i32, i32* @SDIO_RE_INIT_EN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @MTK_REG_CSDIOCSR, align 4
  %90 = call i32 @sdio_writel(i32 %85, i32 %88, i32 %89, i32* %5)
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %133

94:                                               ; preds = %82
  %95 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %96 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @C_INT_CLR_CTRL, align 4
  %99 = load i32, i32* @MTK_REG_CHCR, align 4
  %100 = call i32 @sdio_writel(i32 %97, i32 %98, i32 %99, i32* %5)
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %133

104:                                              ; preds = %94
  %105 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %106 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RX_DONE_INT, align 4
  %109 = load i32, i32* @TX_EMPTY, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @TX_FIFO_OVERFLOW, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @MTK_REG_CHIER, align 4
  %114 = call i32 @sdio_writel(i32 %107, i32 %112, i32 %113, i32* %5)
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %133

118:                                              ; preds = %104
  %119 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %120 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @C_INT_EN_SET, align 4
  %123 = load i32, i32* @MTK_REG_CHLPCR, align 4
  %124 = call i32 @sdio_writel(i32 %121, i32 %122, i32 %123, i32* %5)
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %133

128:                                              ; preds = %118
  %129 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %130 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @sdio_release_host(i32 %131)
  store i32 0, i32* %2, align 4
  br label %149

133:                                              ; preds = %127, %117, %103, %93, %81
  %134 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %135 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sdio_release_irq(i32 %136)
  br label %138

138:                                              ; preds = %133, %72, %63, %54, %40, %29
  %139 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %140 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @sdio_disable_func(i32 %141)
  br label %143

143:                                              ; preds = %138, %19
  %144 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %145 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @sdio_release_host(i32 %146)
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %143, %128
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_enable_func(i32) #1

declare dso_local i32 @sdio_writel(i32, i32, i32, i32*) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.btmtksdio_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

declare dso_local i32 @sdio_claim_irq(i32, i32) #1

declare dso_local i32 @sdio_set_block_size(i32, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @sdio_release_irq(i32) #1

declare dso_local i32 @sdio_disable_func(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
