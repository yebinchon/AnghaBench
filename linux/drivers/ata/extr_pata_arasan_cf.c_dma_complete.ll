; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { %struct.TYPE_8__*, i32, %struct.ata_queued_cmd* }
%struct.TYPE_8__ = type { i32 }
%struct.ata_queued_cmd = type { %struct.TYPE_7__*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"DMA Failed: Timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arasan_cf_dev*)* @dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_complete(%struct.arasan_cf_dev* %0) #0 {
  %2 = alloca %struct.arasan_cf_dev*, align 8
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca i64, align 8
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %2, align 8
  %5 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %6 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %5, i32 0, i32 2
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  store %struct.ata_queued_cmd* %7, %struct.ata_queued_cmd** %3, align 8
  %8 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %9 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %8, i32 0, i32 2
  store %struct.ata_queued_cmd* null, %struct.ata_queued_cmd** %9, align 8
  %10 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %11 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %14 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = call i32 @ata_sff_interrupt(i32 %12, %struct.TYPE_8__* %15)
  %17 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %18 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %1
  %29 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ata_is_dma(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @ata_ehi_push_desc(i32* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %28, %1
  %43 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %44 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i32 @ata_sff_interrupt(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ata_is_dma(i32) #1

declare dso_local i32 @ata_ehi_push_desc(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
