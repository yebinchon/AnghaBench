; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sx4.c_pdc_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sx4.c_pdc_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.pdc_port_priv*, %struct.TYPE_2__* }
%struct.pdc_port_priv = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @pdc_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_port_start(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pdc_port_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pdc_port_priv* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.pdc_port_priv* %13, %struct.pdc_port_priv** %5, align 8
  %14 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %15 = icmp ne %struct.pdc_port_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %22 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @dmam_alloc_coherent(%struct.device* %20, i32 128, i32* %22, i32 %23)
  %25 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %26 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %28 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %19
  %35 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %5, align 8
  %36 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 0
  store %struct.pdc_port_priv* %35, %struct.pdc_port_priv** %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %31, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.pdc_port_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
