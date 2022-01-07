; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtksdio_dev = type { i32, i32 }

@C_INT_EN_CLR = common dso_local global i32 0, align 4
@MTK_REG_CHLPCR = common dso_local global i32 0, align 4
@C_FW_OWN_REQ_SET = common dso_local global i32 0, align 4
@btmtksdio_drv_own_query = common dso_local global i32 0, align 4
@C_COM_DRV_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot return ownership to device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtksdio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtksdio_close(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btmtksdio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = call %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev* %6)
  store %struct.btmtksdio_dev* %7, %struct.btmtksdio_dev** %3, align 8
  %8 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sdio_claim_host(i32 %10)
  %12 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %13 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @C_INT_EN_CLR, align 4
  %16 = load i32, i32* @MTK_REG_CHLPCR, align 4
  %17 = call i32 @sdio_writel(i32 %14, i32 %15, i32 %16, i32* null)
  %18 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %19 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sdio_release_irq(i32 %20)
  %22 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %23 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @C_FW_OWN_REQ_SET, align 4
  %26 = load i32, i32* @MTK_REG_CHLPCR, align 4
  %27 = call i32 @sdio_writel(i32 %24, i32 %25, i32 %26, i32* null)
  %28 = load i32, i32* @btmtksdio_drv_own_query, align 4
  %29 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @C_COM_DRV_OWN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @readx_poll_timeout(i32 %28, %struct.btmtksdio_dev* %29, i32 %30, i32 %36, i32 2000, i32 1000000)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %42 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bt_dev_err(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %47 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sdio_disable_func(i32 %48)
  %50 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %51 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sdio_release_host(i32 %52)
  ret i32 0
}

declare dso_local %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_writel(i32, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_irq(i32) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.btmtksdio_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

declare dso_local i32 @sdio_disable_func(i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
