; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_atiixp.c_atiixp_bmdma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_atiixp.c_atiixp_bmdma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port* }
%struct.ata_device = type { i32 }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ATIIXP_IDE_UDMA_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @atiixp_bmdma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_bmdma_start(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 1
  %10 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  store %struct.ata_port* %10, %struct.ata_port** %3, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 0
  %13 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  store %struct.ata_device* %13, %struct.ata_device** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %5, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 2, %22
  %24 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load i32, i32* @ATIIXP_IDE_UDMA_CONTROL, align 4
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %28, i32 %29, i32* %7)
  %31 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %32 = call i64 @ata_using_udma(%struct.ata_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %45

39:                                               ; preds = %1
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = load i32, i32* @ATIIXP_IDE_UDMA_CONTROL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @pci_write_config_word(%struct.pci_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %51 = call i32 @ata_bmdma_start(%struct.ata_queued_cmd* %50)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ata_using_udma(%struct.ata_device*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ata_bmdma_start(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
