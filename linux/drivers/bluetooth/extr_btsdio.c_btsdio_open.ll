; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btsdio.c_btsdio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btsdio.c_btsdio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btsdio_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@btsdio_interrupt = common dso_local global i32 0, align 4
@SDIO_CLASS_BT_B = common dso_local global i64 0, align 8
@REG_MD_SET = common dso_local global i32 0, align 4
@REG_EN_INTRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btsdio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_open(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btsdio_data*, align 8
  %4 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = call %struct.btsdio_data* @hci_get_drvdata(%struct.hci_dev* %5)
  store %struct.btsdio_data* %6, %struct.btsdio_data** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %12 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @sdio_claim_host(%struct.TYPE_7__* %13)
  %15 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %16 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = call i32 @sdio_enable_func(%struct.TYPE_7__* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %24 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* @btsdio_interrupt, align 4
  %27 = call i32 @sdio_claim_irq(%struct.TYPE_7__* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %32 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @sdio_disable_func(%struct.TYPE_7__* %33)
  br label %55

35:                                               ; preds = %22
  %36 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %37 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SDIO_CLASS_BT_B, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %45 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* @REG_MD_SET, align 4
  %48 = call i32 @sdio_writeb(%struct.TYPE_7__* %46, i32 0, i32 %47, i32* null)
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %51 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* @REG_EN_INTRD, align 4
  %54 = call i32 @sdio_writeb(%struct.TYPE_7__* %52, i32 1, i32 %53, i32* null)
  br label %55

55:                                               ; preds = %49, %30, %21
  %56 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %57 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i32 @sdio_release_host(%struct.TYPE_7__* %58)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.btsdio_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_7__*) #1

declare dso_local i32 @sdio_enable_func(%struct.TYPE_7__*) #1

declare dso_local i32 @sdio_claim_irq(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sdio_disable_func(%struct.TYPE_7__*) #1

declare dso_local i32 @sdio_writeb(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
