; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_st.c_st_ahci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_st.c_st_ahci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.st_ahci_drv_data = type { i32 }
%struct.ahci_host_priv = type { i32, i32, %struct.st_ahci_drv_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ports-implemented\00", align 1
@st_ahci_port_info = common dso_local global i32 0, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_ahci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_ahci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.st_ahci_drv_data*, align 8
  %6 = alloca %struct.ahci_host_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.st_ahci_drv_data* @devm_kzalloc(%struct.device* %11, i32 4, i32 %12)
  store %struct.st_ahci_drv_data* %13, %struct.st_ahci_drv_data** %5, align 8
  %14 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %15 = icmp ne %struct.st_ahci_drv_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %20, i32 0)
  store %struct.ahci_host_priv* %21, %struct.ahci_host_priv** %6, align 8
  %22 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %23 = call i64 @IS_ERR(%struct.ahci_host_priv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.ahci_host_priv* %26)
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %19
  %29 = load %struct.st_ahci_drv_data*, %struct.st_ahci_drv_data** %5, align 8
  %30 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %30, i32 0, i32 2
  store %struct.st_ahci_drv_data* %29, %struct.st_ahci_drv_data** %31, align 8
  %32 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @st_ahci_probe_resets(%struct.ahci_host_priv* %32, %struct.device* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %68

40:                                               ; preds = %28
  %41 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %42 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %68

47:                                               ; preds = %40
  %48 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %49 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @st_ahci_configure_oob(i32 %50)
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %55, i32 0, i32 0
  %57 = call i32 @of_property_read_u32(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %60 = call i32 @ahci_platform_init_host(%struct.platform_device* %58, %struct.ahci_host_priv* %59, i32* @st_ahci_port_info, i32* @ahci_platform_sht)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %65 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %63, %45, %38, %25, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.st_ahci_drv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @st_ahci_probe_resets(%struct.ahci_host_priv*, %struct.device*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @st_ahci_configure_oob(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32*, i32*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
