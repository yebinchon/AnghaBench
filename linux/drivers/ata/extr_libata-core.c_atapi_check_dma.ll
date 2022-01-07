; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_atapi_check_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_atapi_check_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_3__*, %struct.ata_port* }
%struct.TYPE_3__ = type { i32 }
%struct.ata_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@ATA_HORKAGE_ATAPI_MOD16_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atapi_check_dma(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 2
  %7 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  store %struct.ata_port* %7, %struct.ata_port** %4, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATA_HORKAGE_ATAPI_MOD16_DMA, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 15
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %42

24:                                               ; preds = %16, %1
  %25 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.ata_queued_cmd*)**
  %30 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %29, align 8
  %31 = icmp ne i32 (%struct.ata_queued_cmd*)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %34 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.ata_queued_cmd*)**
  %38 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %37, align 8
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %40 = call i32 %38(%struct.ata_queued_cmd* %39)
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %32, %23
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
