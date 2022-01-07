; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_wait_after_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_wait_after_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32 }

@ATA_WAIT_AFTER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @sata_rcar_wait_after_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_rcar_wait_after_reset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ata_port*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %7 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %6, i32 0, i32 0
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %5, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %10 = load i32, i32* @ATA_WAIT_AFTER_RESET, align 4
  %11 = call i32 @ata_msleep(%struct.ata_port* %9, i32 %10)
  %12 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ata_sff_wait_ready(%struct.ata_link* %12, i64 %13)
  ret i32 %14
}

declare dso_local i32 @ata_msleep(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_sff_wait_ready(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
