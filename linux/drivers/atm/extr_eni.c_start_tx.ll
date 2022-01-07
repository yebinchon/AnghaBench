; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.eni_dev = type { %struct.TYPE_2__*, i32, i32*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@ATM_OC3_PCR = common dso_local global i32 0, align 4
@DEFAULT_TX_MULT = common dso_local global i32 0, align 4
@MID_DMA_WR_TX = common dso_local global i32 0, align 4
@NR_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_tx(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  %3 = alloca %struct.eni_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %5 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %6 = call %struct.eni_dev* @ENI_DEV(%struct.atm_dev* %5)
  store %struct.eni_dev* %6, %struct.eni_dev** %3, align 8
  %7 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %8 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %7, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @ATM_OC3_PCR, align 4
  %10 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %11 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @DEFAULT_TX_MULT, align 4
  %13 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %14 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %16 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %15, i32 0, i32 3
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %19 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %21 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %20, i32 0, i32 1
  %22 = call i32 @skb_queue_head_init(i32* %21)
  %23 = load i32, i32* @MID_DMA_WR_TX, align 4
  %24 = call i32 @eni_out(i32 0, i32 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %45, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NR_CHAN, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %31 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %39 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 8
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %25

48:                                               ; preds = %25
  ret i32 0
}

declare dso_local %struct.eni_dev* @ENI_DEV(%struct.atm_dev*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @eni_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
