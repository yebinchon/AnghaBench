; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.btmtksdio_dev = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@C_INT_EN_CLR = common dso_local global i32 0, align 4
@MTK_REG_CHLPCR = common dso_local global i32 0, align 4
@MTK_REG_CHISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"CHISR is 0\00", align 1
@FW_OWN_BACK_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Get fw own back\00", align 1
@TX_EMPTY = common dso_local global i32 0, align 4
@TX_FIFO_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Tx fifo overflow\00", align 1
@RX_DONE_INT = common dso_local global i32 0, align 4
@RX_PKT_LEN = common dso_local global i32 0, align 4
@C_INT_EN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @btmtksdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btmtksdio_interrupt(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.btmtksdio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %7 = call %struct.btmtksdio_dev* @sdio_get_drvdata(%struct.sdio_func* %6)
  store %struct.btmtksdio_dev* %7, %struct.btmtksdio_dev** %3, align 8
  %8 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sdio_release_host(i32 %10)
  %12 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %13 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  %16 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %17 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sdio_claim_host(i32 %18)
  %20 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %21 = load i32, i32* @C_INT_EN_CLR, align 4
  %22 = load i32, i32* @MTK_REG_CHLPCR, align 4
  %23 = call i32 @sdio_writel(%struct.sdio_func* %20, i32 %21, i32 %22, i32* null)
  %24 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %25 = load i32, i32* @MTK_REG_CHISR, align 4
  %26 = call i32 @sdio_readl(%struct.sdio_func* %24, i32 %25, i32* null)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MTK_REG_CHISR, align 4
  %30 = call i32 @sdio_writel(%struct.sdio_func* %27, i32 %28, i32 %29, i32* null)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %39 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i32 @bt_dev_err(%struct.TYPE_6__* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %1
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FW_OWN_BACK_INT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %49 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @bt_dev_dbg(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @TX_EMPTY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %59 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %58, i32 0, i32 2
  %60 = call i32 @schedule_work(i32* %59)
  br label %73

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @TX_FIFO_OVERFLOW, align 4
  %64 = and i32 %62, %63
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %69 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @bt_dev_warn(%struct.TYPE_6__* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @RX_DONE_INT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @RX_PKT_LEN, align 4
  %81 = and i32 %79, %80
  %82 = ashr i32 %81, 16
  store i32 %82, i32* %5, align 4
  %83 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @btmtksdio_rx_packet(%struct.btmtksdio_dev* %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %89 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %87, %78
  br label %96

96:                                               ; preds = %95, %73
  %97 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %98 = load i32, i32* @C_INT_EN_SET, align 4
  %99 = load i32, i32* @MTK_REG_CHLPCR, align 4
  %100 = call i32 @sdio_writel(%struct.sdio_func* %97, i32 %98, i32 %99, i32* null)
  %101 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %102 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pm_runtime_mark_last_busy(i32 %103)
  %105 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %3, align 8
  %106 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pm_runtime_put_autosuspend(i32 %107)
  ret void
}

declare dso_local %struct.btmtksdio_dev* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_writel(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @sdio_readl(%struct.sdio_func*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bt_dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @bt_dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @bt_dev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @btmtksdio_rx_packet(%struct.btmtksdio_dev*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
