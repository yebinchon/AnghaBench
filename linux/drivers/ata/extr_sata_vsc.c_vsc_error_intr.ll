; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_vsc.c_vsc_error_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_vsc.c_vsc_error_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }

@VSC_SATA_INT_PHY_CHANGE = common dso_local global i32 0, align 4
@VSC_SATA_INT_ERROR_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ata_port*)* @vsc_error_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc_error_intr(i32 %0, %struct.ata_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ata_port* %1, %struct.ata_port** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VSC_SATA_INT_PHY_CHANGE, align 4
  %7 = load i32, i32* @VSC_SATA_INT_ERROR_M, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %13 = call i32 @ata_port_freeze(%struct.ata_port* %12)
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %16 = call i32 @ata_port_abort(%struct.ata_port* %15)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @ata_port_abort(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
