; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_amd.c_nv_host_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_amd.c_nv_host_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_host*)* @nv_host_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_host_stop(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca i64, align 8
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %4 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %5 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %8 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @to_pci_dev(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @pci_write_config_dword(i32 %10, i32 96, i64 %11)
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i64) #1

declare dso_local i32 @to_pci_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
