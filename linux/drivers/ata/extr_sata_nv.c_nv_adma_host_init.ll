; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32*, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@NV_MCP_SATA_CFG_20 = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT0_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT0_PWB_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT1_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT1_PWB_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_host*)* @nv_adma_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_adma_host_init(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %6 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %7 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = load i32, i32* @NV_MCP_SATA_CFG_20, align 4
  %13 = call i32 @pci_read_config_dword(%struct.pci_dev* %11, i32 %12, i32* %5)
  %14 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT0_EN, align 4
  %15 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT0_PWB_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT1_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT1_PWB_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @NV_MCP_SATA_CFG_20, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pci_write_config_dword(%struct.pci_dev* %23, i32 %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %42, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %30 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %35 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nv_adma_setup_port(i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %27

45:                                               ; preds = %27
  ret i32 0
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @nv_adma_setup_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
