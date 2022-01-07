; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.arasan_cf_pdata = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"clock enable failed\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"clock set rate failed\00", align 1
@CF_IF_CLK_166M = common dso_local global i32 0, align 4
@CF_IF_CLK_200M = common dso_local global i32 0, align 4
@CLK_CFG = common dso_local global i64 0, align 8
@TRUE_IDE_MODE = common dso_local global i32 0, align 4
@CFHOST_ENB = common dso_local global i32 0, align 4
@OP_MODE = common dso_local global i64 0, align 8
@CARD_DETECT_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arasan_cf_dev*)* @cf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_init(%struct.arasan_cf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arasan_cf_dev*, align 8
  %4 = alloca %struct.arasan_cf_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %3, align 8
  %8 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %9 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.arasan_cf_pdata* @dev_get_platdata(i32 %12)
  store %struct.arasan_cf_pdata* %13, %struct.arasan_cf_pdata** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %15 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_prepare_enable(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %22 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %96

28:                                               ; preds = %1
  %29 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %30 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clk_set_rate(i32 %31, i32 166000000)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %37 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %43 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_disable_unprepare(i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %96

47:                                               ; preds = %28
  %48 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %49 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load i32, i32* @CF_IF_CLK_166M, align 4
  store i32 %54, i32* %5, align 4
  %55 = load %struct.arasan_cf_pdata*, %struct.arasan_cf_pdata** %4, align 8
  %56 = icmp ne %struct.arasan_cf_pdata* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.arasan_cf_pdata*, %struct.arasan_cf_pdata** %4, align 8
  %59 = getelementptr inbounds %struct.arasan_cf_pdata, %struct.arasan_cf_pdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CF_IF_CLK_200M, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.arasan_cf_pdata*, %struct.arasan_cf_pdata** %4, align 8
  %65 = getelementptr inbounds %struct.arasan_cf_pdata, %struct.arasan_cf_pdata* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %57, %47
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %70 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CLK_CFG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* @TRUE_IDE_MODE, align 4
  %76 = load i32, i32* @CFHOST_ENB, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %79 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @OP_MODE, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %85 = load i32, i32* @CARD_DETECT_IRQ, align 4
  %86 = call i32 @cf_interrupt_enable(%struct.arasan_cf_dev* %84, i32 %85, i32 1)
  %87 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %88 = call i32 @cf_ginterrupt_enable(%struct.arasan_cf_dev* %87, i32 1)
  %89 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %90 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %67, %35, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.arasan_cf_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cf_interrupt_enable(%struct.arasan_cf_dev*, i32, i32) #1

declare dso_local i32 @cf_ginterrupt_enable(%struct.arasan_cf_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
