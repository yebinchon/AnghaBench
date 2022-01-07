; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_dev_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_dev_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mpc52xx_ata_priv* }
%struct.mpc52xx_ata_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, i32)* @mpc52xx_ata_dev_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc52xx_ata_dev_select(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc52xx_ata_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %9, align 8
  store %struct.mpc52xx_ata_priv* %10, %struct.mpc52xx_ata_priv** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mpc52xx_ata_apply_timings(%struct.mpc52xx_ata_priv* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ata_sff_dev_select(%struct.ata_port* %21, i32 %22)
  ret void
}

declare dso_local i32 @mpc52xx_ata_apply_timings(%struct.mpc52xx_ata_priv*, i32) #1

declare dso_local i32 @ata_sff_dev_select(%struct.ata_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
