; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_bmdma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_bmdma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pxa_bmdma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_bmdma_setup(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %3 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %8, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 0
  %15 = call i32 %9(%struct.TYPE_4__* %12, i32* %14)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
