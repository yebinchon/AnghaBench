; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mvebu.c_ahci_mvebu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mvebu.c_ahci_mvebu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ahci_mvebu_plat_data = type { i32 (%struct.ahci_host_priv*)*, i32 }
%struct.ahci_host_priv = type opaque
%struct.ahci_host_priv.0 = type { i32, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ahci_mvebu_stop_engine = common dso_local global i32 0, align 4
@ahci_mvebu_port_info = common dso_local global i32 0, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ahci_mvebu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_mvebu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ahci_mvebu_plat_data*, align 8
  %5 = alloca %struct.ahci_host_priv.0*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.ahci_mvebu_plat_data* @of_device_get_match_data(i32* %8)
  store %struct.ahci_mvebu_plat_data* %9, %struct.ahci_mvebu_plat_data** %4, align 8
  %10 = load %struct.ahci_mvebu_plat_data*, %struct.ahci_mvebu_plat_data** %4, align 8
  %11 = icmp ne %struct.ahci_mvebu_plat_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call %struct.ahci_host_priv.0* @ahci_platform_get_resources(%struct.platform_device* %16, i32 0)
  store %struct.ahci_host_priv.0* %17, %struct.ahci_host_priv.0** %5, align 8
  %18 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %19 = call i64 @IS_ERR(%struct.ahci_host_priv.0* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.ahci_host_priv.0* %22)
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %15
  %25 = load %struct.ahci_mvebu_plat_data*, %struct.ahci_mvebu_plat_data** %4, align 8
  %26 = getelementptr inbounds %struct.ahci_mvebu_plat_data, %struct.ahci_mvebu_plat_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %29 = getelementptr inbounds %struct.ahci_host_priv.0, %struct.ahci_host_priv.0* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ahci_mvebu_plat_data*, %struct.ahci_mvebu_plat_data** %4, align 8
  %33 = bitcast %struct.ahci_mvebu_plat_data* %32 to i8*
  %34 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %35 = getelementptr inbounds %struct.ahci_host_priv.0, %struct.ahci_host_priv.0* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %37 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv.0* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %24
  %43 = load i32, i32* @ahci_mvebu_stop_engine, align 4
  %44 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %45 = getelementptr inbounds %struct.ahci_host_priv.0, %struct.ahci_host_priv.0* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ahci_mvebu_plat_data*, %struct.ahci_mvebu_plat_data** %4, align 8
  %47 = getelementptr inbounds %struct.ahci_mvebu_plat_data, %struct.ahci_mvebu_plat_data* %46, i32 0, i32 0
  %48 = load i32 (%struct.ahci_host_priv*)*, i32 (%struct.ahci_host_priv*)** %47, align 8
  %49 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %50 = bitcast %struct.ahci_host_priv.0* %49 to %struct.ahci_host_priv*
  %51 = call i32 %48(%struct.ahci_host_priv* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %58 = call i32 @ahci_platform_init_host(%struct.platform_device* %56, %struct.ahci_host_priv.0* %57, i32* @ahci_mvebu_port_info, i32* @ahci_platform_sht)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %67

63:                                               ; preds = %61, %54
  %64 = load %struct.ahci_host_priv.0*, %struct.ahci_host_priv.0** %5, align 8
  %65 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv.0* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %62, %40, %21, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.ahci_mvebu_plat_data* @of_device_get_match_data(i32*) #1

declare dso_local %struct.ahci_host_priv.0* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv.0*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv.0*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv.0*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv.0*, i32*, i32*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
