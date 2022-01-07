; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_bmdma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pxa.c_pxa_bmdma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pata_pxa_data* }
%struct.pata_pxa_data = type { i32, i32, i32 }

@DMA_ERROR = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Timeout waiting for DMA completion!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pxa_bmdma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_bmdma_stop(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.pata_pxa_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %8, align 8
  store %struct.pata_pxa_data* %9, %struct.pata_pxa_data** %3, align 8
  %10 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %11 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %14 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dmaengine_tx_status(i32 %12, i32 %15, i32* null)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DMA_ERROR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DMA_COMPLETE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %26 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %25, i32 0, i32 1
  %27 = load i32, i32* @HZ, align 4
  %28 = call i64 @wait_for_completion_timeout(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ata_dev_err(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %24, %20, %1
  %36 = load %struct.pata_pxa_data*, %struct.pata_pxa_data** %3, align 8
  %37 = getelementptr inbounds %struct.pata_pxa_data, %struct.pata_pxa_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dmaengine_terminate_all(i32 %38)
  ret void
}

declare dso_local i32 @dmaengine_tx_status(i32, i32, i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ata_dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
