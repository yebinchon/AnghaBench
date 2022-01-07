; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c___ata_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c___ata_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32, i32, i32 }

@ATA_ALL_DEVICES = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@ATA_EHI_NO_AUTOPSY = common dso_local global i32 0, align 4
@ATA_EHI_QUIET = common dso_local global i32 0, align 4
@ATA_PFLAG_INITIALIZING = common dso_local global i32 0, align 4
@ATA_PFLAG_LOADING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ata_port_probe(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ata_eh_info*, align 8
  %4 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ata_eh_info* %7, %struct.ata_eh_info** %3, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load i32, i32* @ATA_ALL_DEVICES, align 4
  %14 = load %struct.ata_eh_info*, %struct.ata_eh_info** %3, align 8
  %15 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @ATA_EH_RESET, align 4
  %19 = load %struct.ata_eh_info*, %struct.ata_eh_info** %3, align 8
  %20 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @ATA_EHI_NO_AUTOPSY, align 4
  %24 = load i32, i32* @ATA_EHI_QUIET, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ata_eh_info*, %struct.ata_eh_info** %3, align 8
  %27 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @ATA_PFLAG_INITIALIZING, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @ATA_PFLAG_LOADING, align 4
  %37 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %42 = call i32 @ata_port_schedule_eh(%struct.ata_port* %41)
  %43 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32 %45, i64 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
