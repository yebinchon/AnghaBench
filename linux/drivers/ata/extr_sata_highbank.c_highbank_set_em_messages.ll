; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_highbank_set_em_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_highbank_set_em_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ahci_host_priv = type { i32, i32, i64, %struct.ecx_plat_data* }
%struct.ecx_plat_data = type { i64, i64, i32, i32, %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }
%struct.ata_port_info = type { i32 }

@SGPIO_PINS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"calxeda,sgpio\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get GPIO %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CX SGPIO\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"calxeda,led-order\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"calxeda,pre-clocks\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"calxeda,post-clocks\00", align 1
@EM_MSG_TYPE_LED = common dso_local global i32 0, align 4
@ATA_FLAG_EM = common dso_local global i32 0, align 4
@ATA_FLAG_SW_ACTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ahci_host_priv*, %struct.ata_port_info*)* @highbank_set_em_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @highbank_set_em_messages(%struct.device* %0, %struct.ahci_host_priv* %1, %struct.ata_port_info* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ahci_host_priv*, align 8
  %6 = alloca %struct.ata_port_info*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.ecx_plat_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio_desc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ahci_host_priv* %1, %struct.ahci_host_priv** %5, align 8
  store %struct.ata_port_info* %2, %struct.ata_port_info** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %14, i32 0, i32 3
  %16 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %15, align 8
  store %struct.ecx_plat_data* %16, %struct.ecx_plat_data** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %43, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SGPIO_PINS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %25 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  store %struct.gpio_desc* %25, %struct.gpio_desc** %10, align 8
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %27 = call i64 @IS_ERR(%struct.gpio_desc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %43

33:                                               ; preds = %21
  %34 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %35 = call i32 @gpiod_set_consumer_name(%struct.gpio_desc* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %37 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %8, align 8
  %38 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %37, i32 0, i32 4
  %39 = load %struct.gpio_desc**, %struct.gpio_desc*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %39, i64 %41
  store %struct.gpio_desc* %36, %struct.gpio_desc** %42, align 8
  br label %43

43:                                               ; preds = %33, %29
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %17

46:                                               ; preds = %17
  %47 = load %struct.device_node*, %struct.device_node** %7, align 8
  %48 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %8, align 8
  %49 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %8, align 8
  %52 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @of_property_read_u32_array(%struct.device_node* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.device_node*, %struct.device_node** %7, align 8
  %56 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %8, align 8
  %57 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %56, i32 0, i32 1
  %58 = call i64 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %8, align 8
  %62 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %46
  %64 = load %struct.device_node*, %struct.device_node** %7, align 8
  %65 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %8, align 8
  %66 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %65, i32 0, i32 0
  %67 = call i64 @of_property_read_u32(%struct.device_node* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %8, align 8
  %71 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %76 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %75, i32 0, i32 0
  store i32 4, i32* %76, align 8
  %77 = load i32, i32* @EM_MSG_TYPE_LED, align 4
  %78 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @ATA_FLAG_EM, align 4
  %81 = load i32, i32* @ATA_FLAG_SW_ACTIVITY, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.ata_port_info*, %struct.ata_port_info** %6, align 8
  %84 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  ret void
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_set_consumer_name(%struct.gpio_desc*, i8*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
