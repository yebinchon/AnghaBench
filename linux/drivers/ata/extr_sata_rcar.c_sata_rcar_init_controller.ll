; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_init_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_init_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.sata_rcar_priv* }
%struct.sata_rcar_priv = type { i32, i32 }

@SATAINTMASK_ALL_GEN2 = common dso_local global i32 0, align 4
@SATAINTMASK_ALL_GEN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SATA phy is not initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_host*)* @sata_rcar_init_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_rcar_init_controller(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca %struct.sata_rcar_priv*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %4 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %5 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %4, i32 0, i32 1
  %6 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %5, align 8
  store %struct.sata_rcar_priv* %6, %struct.sata_rcar_priv** %3, align 8
  %7 = load i32, i32* @SATAINTMASK_ALL_GEN2, align 4
  %8 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sata_rcar_priv, %struct.sata_rcar_priv* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %3, align 8
  %11 = getelementptr inbounds %struct.sata_rcar_priv, %struct.sata_rcar_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 131, label %13
    i32 130, label %19
    i32 128, label %19
    i32 129, label %22
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @SATAINTMASK_ALL_GEN1, align 4
  %15 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %3, align 8
  %16 = getelementptr inbounds %struct.sata_rcar_priv, %struct.sata_rcar_priv* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %3, align 8
  %18 = call i32 @sata_rcar_gen1_phy_init(%struct.sata_rcar_priv* %17)
  br label %28

19:                                               ; preds = %1, %1
  %20 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %3, align 8
  %21 = call i32 @sata_rcar_gen2_phy_init(%struct.sata_rcar_priv* %20)
  br label %28

22:                                               ; preds = %1
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %25 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %22, %19, %13
  %29 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %3, align 8
  %30 = call i32 @sata_rcar_init_module(%struct.sata_rcar_priv* %29)
  ret void
}

declare dso_local i32 @sata_rcar_gen1_phy_init(%struct.sata_rcar_priv*) #1

declare dso_local i32 @sata_rcar_gen2_phy_init(%struct.sata_rcar_priv*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @sata_rcar_init_module(%struct.sata_rcar_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
