; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_via.c_vt6420_bmdma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_via.c_vt6420_bmdma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.ata_port* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ata_port = type { i32 }

@ATA_CMD_PACKET = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @vt6420_bmdma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt6420_bmdma_start(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %4 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %4, i32 0, i32 2
  %6 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  store %struct.ata_port* %6, %struct.ata_port** %3, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ATA_CMD_PACKET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMA_TO_DEVICE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = call i32 @ata_sff_pause(%struct.ata_port* %22)
  br label %24

24:                                               ; preds = %21, %13, %1
  %25 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %26 = call i32 @ata_bmdma_start(%struct.ata_queued_cmd* %25)
  ret void
}

declare dso_local i32 @ata_sff_pause(%struct.ata_port*) #1

declare dso_local i32 @ata_bmdma_start(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
