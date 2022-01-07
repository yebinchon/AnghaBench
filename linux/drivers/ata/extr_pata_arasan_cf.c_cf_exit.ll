; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@TRUE_IDE_IRQS = common dso_local global i32 0, align 4
@OP_MODE = common dso_local global i64 0, align 8
@CFHOST_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arasan_cf_dev*)* @cf_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_exit(%struct.arasan_cf_dev* %0) #0 {
  %2 = alloca %struct.arasan_cf_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %2, align 8
  %4 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %5 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %11 = call i32 @cf_ginterrupt_enable(%struct.arasan_cf_dev* %10, i32 0)
  %12 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %13 = load i32, i32* @TRUE_IDE_IRQS, align 4
  %14 = call i32 @cf_interrupt_enable(%struct.arasan_cf_dev* %12, i32 %13, i32 0)
  %15 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %16 = call i32 @cf_card_reset(%struct.arasan_cf_dev* %15)
  %17 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %18 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OP_MODE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = load i32, i32* @CFHOST_ENB, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %27 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OP_MODE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %33 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %39 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_disable_unprepare(i32 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cf_ginterrupt_enable(%struct.arasan_cf_dev*, i32) #1

declare dso_local i32 @cf_interrupt_enable(%struct.arasan_cf_dev*, i32, i32) #1

declare dso_local i32 @cf_card_reset(%struct.arasan_cf_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
