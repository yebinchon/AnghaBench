; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_bmdma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_bmdma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pata_icside_state* }
%struct.pata_icside_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pata_icside_bmdma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_icside_bmdma_stop(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pata_icside_state*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 0
  %7 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  store %struct.ata_port* %7, %struct.ata_port** %3, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pata_icside_state*, %struct.pata_icside_state** %11, align 8
  store %struct.pata_icside_state* %12, %struct.pata_icside_state** %4, align 8
  %13 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %14 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @disable_dma(i32 %15)
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = call i32 @ata_sff_dma_pause(%struct.ata_port* %17)
  ret void
}

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @ata_sff_dma_pause(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
