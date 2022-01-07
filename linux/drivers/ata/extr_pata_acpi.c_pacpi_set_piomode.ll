; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.pata_acpi* }
%struct.pata_acpi = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.ata_timing = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @pacpi_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pacpi_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pata_acpi*, align 8
  %7 = alloca %struct.ata_timing*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %8 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %9 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load %struct.pata_acpi*, %struct.pata_acpi** %12, align 8
  store %struct.pata_acpi* %13, %struct.pata_acpi** %6, align 8
  %14 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %15 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 16
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ata_timing* @ata_timing_find_mode(i32 %24)
  store %struct.ata_timing* %25, %struct.ata_timing** %7, align 8
  %26 = load %struct.ata_timing*, %struct.ata_timing** %7, align 8
  %27 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %30 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %28, i32* %36, align 4
  %37 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %38 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %39 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %38, i32 0, i32 0
  %40 = call i32 @ata_acpi_stm(%struct.ata_port* %37, %struct.TYPE_5__* %39)
  %41 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %42 = load %struct.pata_acpi*, %struct.pata_acpi** %6, align 8
  %43 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %42, i32 0, i32 0
  %44 = call i32 @ata_acpi_gtm(%struct.ata_port* %41, %struct.TYPE_5__* %43)
  ret void
}

declare dso_local %struct.ata_timing* @ata_timing_find_mode(i32) #1

declare dso_local i32 @ata_acpi_stm(%struct.ata_port*, %struct.TYPE_5__*) #1

declare dso_local i32 @ata_acpi_gtm(%struct.ata_port*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
