; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_qc_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port* }
%struct.ata_device = type { i32 }
%struct.ata_port = type { %struct.pata_acpi* }
%struct.pata_acpi = type { %struct.ata_device*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @pacpi_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pacpi_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.pata_acpi*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 1
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %4, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 0
  %12 = load %struct.ata_device*, %struct.ata_device** %11, align 8
  store %struct.ata_device* %12, %struct.ata_device** %5, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.pata_acpi*, %struct.pata_acpi** %14, align 8
  store %struct.pata_acpi* %15, %struct.pata_acpi** %6, align 8
  %16 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %17 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %24 = call i32 @ata_bmdma_qc_issue(%struct.ata_queued_cmd* %23)
  store i32 %24, i32* %2, align 4
  br label %49

25:                                               ; preds = %1
  %26 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %27 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %28 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %27, i32 0, i32 0
  %29 = load %struct.ata_device*, %struct.ata_device** %28, align 8
  %30 = icmp ne %struct.ata_device* %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %33 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %34 = call i32 @pacpi_set_piomode(%struct.ata_port* %32, %struct.ata_device* %33)
  %35 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %36 = call i64 @ata_dma_enabled(%struct.ata_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %40 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %41 = call i32 @pacpi_set_dmamode(%struct.ata_port* %39, %struct.ata_device* %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %44 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %45 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %44, i32 0, i32 0
  store %struct.ata_device* %43, %struct.ata_device** %45, align 8
  br label %46

46:                                               ; preds = %42, %25
  %47 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %48 = call i32 @ata_bmdma_qc_issue(%struct.ata_queued_cmd* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ata_bmdma_qc_issue(%struct.ata_queued_cmd*) #1

declare dso_local i32 @pacpi_set_piomode(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i64 @ata_dma_enabled(%struct.ata_device*) #1

declare dso_local i32 @pacpi_set_dmamode(%struct.ata_port*, %struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
