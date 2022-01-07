; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pcmcia.c_pcmcia_8bit_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pcmcia.c_pcmcia_8bit_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i64, %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.ata_port*)* }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@ATA_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"drained %d bytes to clear DRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pcmcia_8bit_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmcia_8bit_drain_fifo(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = icmp eq %struct.ata_queued_cmd* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DMA_TO_DEVICE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  br label %48

14:                                               ; preds = %7
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 1
  %17 = load %struct.ata_port*, %struct.ata_port** %16, align 8
  store %struct.ata_port* %17, %struct.ata_port** %4, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %35, %14
  %19 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %22, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = call i32 %23(%struct.ata_port* %24)
  %26 = load i32, i32* @ATA_DRQ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = icmp slt i32 %30, 65536
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi i1 [ false, %18 ], [ %32, %29 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ioread8(i32 %39)
  br label %18

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ata_port_warn(%struct.ata_port* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %13, %44, %41
  ret void
}

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ata_port_warn(%struct.ata_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
