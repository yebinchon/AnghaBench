; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sil24.c_sil24_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sil24.c_sil24_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.sil24_port_priv* }
%struct.sil24_port_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sil24_error_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil24_error_handler(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.sil24_port_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 0
  %6 = load %struct.sil24_port_priv*, %struct.sil24_port_priv** %5, align 8
  store %struct.sil24_port_priv* %6, %struct.sil24_port_priv** %3, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %8 = call i64 @sil24_init_port(%struct.ata_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %12 = call i32 @ata_eh_freeze_port(%struct.ata_port* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %15 = call i32 @sata_pmp_error_handler(%struct.ata_port* %14)
  %16 = load %struct.sil24_port_priv*, %struct.sil24_port_priv** %3, align 8
  %17 = getelementptr inbounds %struct.sil24_port_priv, %struct.sil24_port_priv* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i64 @sil24_init_port(%struct.ata_port*) #1

declare dso_local i32 @ata_eh_freeze_port(%struct.ata_port*) #1

declare dso_local i32 @sata_pmp_error_handler(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
