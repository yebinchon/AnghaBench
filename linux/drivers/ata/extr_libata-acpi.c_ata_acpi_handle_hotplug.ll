; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_handle_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_handle_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ACPI event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @ata_acpi_handle_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_acpi_handle_hotplug(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_eh_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ata_eh_info* %12, %struct.ata_eh_info** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %32 [
    i32 130, label %19
    i32 129, label %19
    i32 128, label %26
  ]

19:                                               ; preds = %3, %3
  %20 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %21 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %23 = call i32 @ata_ehi_hotplugged(%struct.ata_eh_info* %22)
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = call i32 @ata_port_freeze(%struct.ata_port* %24)
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %28 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %30 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %31 = call i32 @ata_acpi_detach_device(%struct.ata_port* %29, %struct.ata_device* %30)
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %3, %26, %19
  %33 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %34 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32 %35, i64 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %42 = call i32 @ata_port_wait_eh(%struct.ata_port* %41)
  br label %43

43:                                               ; preds = %40, %32
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*) #1

declare dso_local i32 @ata_ehi_hotplugged(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @ata_acpi_detach_device(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ata_port_wait_eh(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
