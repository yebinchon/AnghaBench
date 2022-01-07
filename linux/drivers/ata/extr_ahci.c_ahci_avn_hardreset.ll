; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_avn_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_avn_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_port*, i32 }
%struct.ata_port = type { i32, %struct.ata_host*, %struct.ahci_port_priv* }
%struct.ata_host = type { i32, %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)* }
%struct.ahci_port_priv = type { i32* }
%struct.ata_taskfile = type { i32 }
%struct.pci_dev = type { i32 }

@RX_FIS_D2H_REG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_BUSY = common dso_local global i32 0, align 4
@ahci_check_ready = common dso_local global i32 0, align 4
@SCR_STATUS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"avn bounce port%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EXIT, rc=%d, class=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @ahci_avn_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_avn_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.ahci_port_priv*, align 8
  %10 = alloca %struct.ahci_host_priv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ata_taskfile, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ata_host*, align 8
  %21 = alloca %struct.pci_dev*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %22 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %23 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %22, i32 0, i32 2
  %24 = call i64* @sata_ehc_deb_timing(i32* %23)
  store i64* %24, i64** %7, align 8
  %25 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %26 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %25, i32 0, i32 1
  %27 = load %struct.ata_port*, %struct.ata_port** %26, align 8
  store %struct.ata_port* %27, %struct.ata_port** %8, align 8
  %28 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 2
  %30 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %29, align 8
  store %struct.ahci_port_priv* %30, %struct.ahci_port_priv** %9, align 8
  %31 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 1
  %33 = load %struct.ata_host*, %struct.ata_host** %32, align 8
  %34 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %33, i32 0, i32 1
  %35 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %34, align 8
  store %struct.ahci_host_priv* %35, %struct.ahci_host_priv** %10, align 8
  %36 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %9, align 8
  %37 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @RX_FIS_D2H_REG, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %11, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @jiffies, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %12, align 8
  %45 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %47 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %46, i32 0, i32 1
  %48 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %47, align 8
  %49 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %50 = call i32 %48(%struct.ata_port* %49)
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %114, %3
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %117

54:                                               ; preds = %51
  %55 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %56 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %19, align 4
  %58 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 1
  %60 = load %struct.ata_host*, %struct.ata_host** %59, align 8
  store %struct.ata_host* %60, %struct.ata_host** %20, align 8
  %61 = load %struct.ata_host*, %struct.ata_host** %20, align 8
  %62 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.pci_dev* @to_pci_dev(i32 %63)
  store %struct.pci_dev* %64, %struct.pci_dev** %21, align 8
  %65 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %66 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ata_tf_init(i32 %67, %struct.ata_taskfile* %13)
  %69 = load i32, i32* @ATA_BUSY, align 4
  %70 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @ata_tf_to_fis(%struct.ata_taskfile* %13, i32 0, i32 0, i32* %71)
  %73 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* @ahci_check_ready, align 4
  %77 = call i32 @sata_link_hardreset(%struct.ata_link* %73, i64* %74, i64 %75, i32* %14, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %79 = load i32, i32* @SCR_STATUS, align 4
  %80 = call i64 @sata_scr_read(%struct.ata_link* %78, i32 %79, i32* %18)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %54
  %83 = load i32, i32* %18, align 4
  %84 = and i32 %83, 15
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %54
  br label %117

87:                                               ; preds = %82
  %88 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %89 = load i32, i32* @KERN_INFO, align 4
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @ata_link_printk(%struct.ata_link* %88, i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %93 = call i32 @pci_read_config_word(%struct.pci_dev* %92, i32 146, i32* %17)
  %94 = load i32, i32* %19, align 4
  %95 = shl i32 1, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %17, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %17, align 4
  %99 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @pci_write_config_word(%struct.pci_dev* %99, i32 146, i32 %100)
  %102 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %103 = call i32 @ata_msleep(%struct.ata_port* %102, i32 1000)
  %104 = load i32, i32* %19, align 4
  %105 = shl i32 1, %104
  %106 = load i32, i32* %17, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %17, align 4
  %108 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @pci_write_config_word(%struct.pci_dev* %108, i32 146, i32 %109)
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %87
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %51

117:                                              ; preds = %86, %51
  %118 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  %119 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %118, i32 0, i32 0
  %120 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %119, align 8
  %121 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %122 = call i32 %120(%struct.ata_port* %121)
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %127 = call i32 @ahci_dev_classify(%struct.ata_port* %126)
  %128 = load i32*, i32** %5, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %117
  %130 = load i32, i32* %15, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %132)
  %134 = load i32, i32* %15, align 4
  ret i32 %134
}

declare dso_local i64* @sata_ehc_deb_timing(i32*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ata_tf_init(i32, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_tf_to_fis(%struct.ata_taskfile*, i32, i32, i32*) #1

declare dso_local i32 @sata_link_hardreset(%struct.ata_link*, i64*, i64, i32*, i32) #1

declare dso_local i64 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @ata_link_printk(%struct.ata_link*, i32, i8*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ata_msleep(%struct.ata_port*, i32) #1

declare dso_local i32 @ahci_dev_classify(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
