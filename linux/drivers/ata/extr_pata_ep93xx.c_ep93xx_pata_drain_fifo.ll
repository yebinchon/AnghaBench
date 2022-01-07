; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i64, %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.ata_port*)* }
%struct.TYPE_3__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i32 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@ATA_DRQ = common dso_local global i32 0, align 4
@IDECTRL_ADDR_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"drained %d bytes to clear DRQ.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ep93xx_pata_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_pata_drain_fifo(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ep93xx_pata_data*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = icmp eq %struct.ata_queued_cmd* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMA_TO_DEVICE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  br label %54

15:                                               ; preds = %8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 1
  %18 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  store %struct.ata_port* %18, %struct.ata_port** %4, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %22, align 8
  store %struct.ep93xx_pata_data* %23, %struct.ep93xx_pata_data** %5, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %44, %15
  %25 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %28, align 8
  %30 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %31 = call i32 %29(%struct.ata_port* %30)
  %32 = load i32, i32* @ATA_DRQ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 65536
  br label %38

38:                                               ; preds = %35, %24
  %39 = phi i1 [ false, %24 ], [ %37, %35 ]
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %42 = load i32, i32* @IDECTRL_ADDR_DATA, align 4
  %43 = call i32 @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %41, i32 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %3, align 4
  br label %24

47:                                               ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @ata_port_dbg(%struct.ata_port* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %14, %50, %47
  ret void
}

declare dso_local i32 @ep93xx_pata_read_reg(%struct.ep93xx_pata_data*, i32) #1

declare dso_local i32 @ata_port_dbg(%struct.ata_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
