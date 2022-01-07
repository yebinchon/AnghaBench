; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ata_host = type { %struct.sata_rcar_priv* }
%struct.sata_rcar_priv = type { i32, i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sata_rcar_interrupt = common dso_local global i32 0, align 4
@sata_rcar_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sata_rcar_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_rcar_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca %struct.sata_rcar_priv*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @platform_get_irq(%struct.platform_device* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %96

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %96

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.sata_rcar_priv* @devm_kzalloc(%struct.device* %25, i32 8, i32 %26)
  store %struct.sata_rcar_priv* %27, %struct.sata_rcar_priv** %6, align 8
  %28 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %6, align 8
  %29 = icmp ne %struct.sata_rcar_priv* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %96

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i64 @of_device_get_match_data(%struct.device* %34)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %6, align 8
  %38 = getelementptr inbounds %struct.sata_rcar_priv, %struct.sata_rcar_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @pm_runtime_enable(%struct.device* %39)
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @pm_runtime_get_sync(%struct.device* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %92

46:                                               ; preds = %33
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call %struct.ata_host* @ata_host_alloc(%struct.device* %47, i32 1)
  store %struct.ata_host* %48, %struct.ata_host** %5, align 8
  %49 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %50 = icmp ne %struct.ata_host* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %89

54:                                               ; preds = %46
  %55 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %6, align 8
  %56 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %57 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %56, i32 0, i32 0
  store %struct.sata_rcar_priv* %55, %struct.sata_rcar_priv** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 0)
  store %struct.resource* %60, %struct.resource** %7, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = call i32 @devm_ioremap_resource(%struct.device* %61, %struct.resource* %62)
  %64 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %6, align 8
  %65 = getelementptr inbounds %struct.sata_rcar_priv, %struct.sata_rcar_priv* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %6, align 8
  %67 = getelementptr inbounds %struct.sata_rcar_priv, %struct.sata_rcar_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %54
  %72 = load %struct.sata_rcar_priv*, %struct.sata_rcar_priv** %6, align 8
  %73 = getelementptr inbounds %struct.sata_rcar_priv, %struct.sata_rcar_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %9, align 4
  br label %89

76:                                               ; preds = %54
  %77 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %78 = call i32 @sata_rcar_setup_port(%struct.ata_host* %77)
  %79 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %80 = call i32 @sata_rcar_init_controller(%struct.ata_host* %79)
  %81 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @sata_rcar_interrupt, align 4
  %84 = call i32 @ata_host_activate(%struct.ata_host* %81, i32 %82, i32 %83, i32 0, i32* @sata_rcar_sht)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %96

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %71, %51
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @pm_runtime_put(%struct.device* %90)
  br label %92

92:                                               ; preds = %89, %45
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @pm_runtime_disable(%struct.device* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %87, %30, %21, %16
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.sata_rcar_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local %struct.ata_host* @ata_host_alloc(%struct.device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sata_rcar_setup_port(%struct.ata_host*) #1

declare dso_local i32 @sata_rcar_init_controller(%struct.ata_host*) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
