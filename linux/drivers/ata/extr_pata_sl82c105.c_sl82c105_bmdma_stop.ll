; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sl82c105.c_sl82c105_bmdma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sl82c105.c_sl82c105_bmdma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.ata_port* }
%struct.ata_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @sl82c105_bmdma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sl82c105_bmdma_stop(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %4 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %4, i32 0, i32 1
  %6 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  store %struct.ata_port* %6, %struct.ata_port** %3, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %8 = call i32 @ata_bmdma_stop(%struct.ata_queued_cmd* %7)
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = call i32 @sl82c105_reset_engine(%struct.ata_port* %9)
  %11 = call i32 @udelay(i32 100)
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sl82c105_set_piomode(%struct.ata_port* %12, i32 %15)
  ret void
}

declare dso_local i32 @ata_bmdma_stop(%struct.ata_queued_cmd*) #1

declare dso_local i32 @sl82c105_reset_engine(%struct.ata_port*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sl82c105_set_piomode(%struct.ata_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
