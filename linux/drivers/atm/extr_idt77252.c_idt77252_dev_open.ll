; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32 }

@IDT77252_BIT_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: SAR not yet initialized.\0A\00", align 1
@SAR_CFG_RXPTH = common dso_local global i32 0, align 4
@SAR_RX_DELAY = common dso_local global i32 0, align 4
@SAR_CFG_RAWIE = common dso_local global i32 0, align 4
@SAR_CFG_RQFIE = common dso_local global i32 0, align 4
@SAR_CFG_TMOIE = common dso_local global i32 0, align 4
@SAR_CFG_FBIE = common dso_local global i32 0, align 4
@SAR_CFG_TXEN = common dso_local global i32 0, align 4
@SAR_CFG_TXINT = common dso_local global i32 0, align 4
@SAR_CFG_TXUIE = common dso_local global i32 0, align 4
@SAR_CFG_TXSFI = common dso_local global i32 0, align 4
@SAR_CFG_PHYIE = common dso_local global i32 0, align 4
@SAR_REG_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: Error initializing OAM.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: Error initializing UBR0.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: opened IDT77252 ABR SAR.\0A\00", align 1
@SAR_CFG_VPECA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*)* @idt77252_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_dev_open(%struct.idt77252_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  %5 = load i32, i32* @IDT77252_BIT_INIT, align 4
  %6 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %7 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %6, i32 0, i32 1
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %12 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load i32, i32* @SAR_CFG_RXPTH, align 4
  %17 = load i32, i32* @SAR_RX_DELAY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SAR_CFG_RAWIE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SAR_CFG_RQFIE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SAR_CFG_TMOIE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SAR_CFG_FBIE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SAR_CFG_TXEN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SAR_CFG_TXINT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SAR_CFG_TXUIE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SAR_CFG_TXSFI, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SAR_CFG_PHYIE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @SAR_REG_CFG, align 4
  %38 = call i32 @readl(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SAR_REG_CFG, align 4
  %42 = call i32 @writel(i32 %40, i32 %41)
  %43 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %44 = call i64 @open_card_oam(%struct.idt77252_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %15
  %47 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %48 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %2, align 4
  br label %65

51:                                               ; preds = %15
  %52 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %53 = call i64 @open_card_ubr0(%struct.idt77252_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %57 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 -1, i32* %2, align 4
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %62 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %55, %46, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @open_card_oam(%struct.idt77252_dev*) #1

declare dso_local i64 @open_card_ubr0(%struct.idt77252_dev*) #1

declare dso_local i32 @IPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
