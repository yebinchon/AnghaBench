; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_port_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_port_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_port_resume(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %3 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %4 = call i32 @ahci_rpm_get_port(%struct.ata_port* %3)
  %5 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %6 = call i32 @ahci_power_up(%struct.ata_port* %5)
  %7 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %8 = call i32 @ahci_start_port(%struct.ata_port* %7)
  %9 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %10 = call i64 @sata_pmp_attached(%struct.ata_port* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %14 = call i32 @ahci_pmp_attach(%struct.ata_port* %13)
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %17 = call i32 @ahci_pmp_detach(%struct.ata_port* %16)
  br label %18

18:                                               ; preds = %15, %12
  ret i32 0
}

declare dso_local i32 @ahci_rpm_get_port(%struct.ata_port*) #1

declare dso_local i32 @ahci_power_up(%struct.ata_port*) #1

declare dso_local i32 @ahci_start_port(%struct.ata_port*) #1

declare dso_local i64 @sata_pmp_attached(%struct.ata_port*) #1

declare dso_local i32 @ahci_pmp_attach(%struct.ata_port*) #1

declare dso_local i32 @ahci_pmp_detach(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
