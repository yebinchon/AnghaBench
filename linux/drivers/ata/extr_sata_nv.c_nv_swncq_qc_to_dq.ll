; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_qc_to_dq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_qc_to_dq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.nv_swncq_port_priv* }
%struct.nv_swncq_port_priv = type { %struct.defer_queue }
%struct.defer_queue = type { i32, i32, i32, i32* }
%struct.ata_queued_cmd = type { i32 }

@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_queued_cmd*)* @nv_swncq_qc_to_dq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_swncq_qc_to_dq(%struct.ata_port* %0, %struct.ata_queued_cmd* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca %struct.nv_swncq_port_priv*, align 8
  %6 = alloca %struct.defer_queue*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 0
  %9 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %8, align 8
  store %struct.nv_swncq_port_priv* %9, %struct.nv_swncq_port_priv** %5, align 8
  %10 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %11 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %10, i32 0, i32 0
  store %struct.defer_queue* %11, %struct.defer_queue** %6, align 8
  %12 = load %struct.defer_queue*, %struct.defer_queue** %6, align 8
  %13 = getelementptr inbounds %struct.defer_queue, %struct.defer_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.defer_queue*, %struct.defer_queue** %6, align 8
  %16 = getelementptr inbounds %struct.defer_queue, %struct.defer_queue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.defer_queue*, %struct.defer_queue** %6, align 8
  %28 = getelementptr inbounds %struct.defer_queue, %struct.defer_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.defer_queue*, %struct.defer_queue** %6, align 8
  %35 = getelementptr inbounds %struct.defer_queue, %struct.defer_queue* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.defer_queue*, %struct.defer_queue** %6, align 8
  %38 = getelementptr inbounds %struct.defer_queue, %struct.defer_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %36, i64 %44
  store i32 %33, i32* %45, align 4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
